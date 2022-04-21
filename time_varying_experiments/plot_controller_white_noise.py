import matplotlib.pyplot as plt
import pdb
import os
import sys
from functools import partial
import os
import pickle
import sys
import torch
import numpy as np

from safe_control_gym.utils.configuration import ConfigFactory
from safe_control_gym.utils.plotting import plot_from_logs
from safe_control_gym.utils.registration import make
from safe_control_gym.utils.utils import mkdirs, set_dir_from_config, set_device_from_config, set_seed_from_config, save_video

def train(config):
    """Training template.
    
    Usage:
        * to start training, use with `--func train`.
        * to restore from a previous training, additionally use `--restore {dir_path}` 
            where `dir_path` is the output folder from previous training.  

    """
    # Experiment setup.
    if not config.restore:
        set_dir_from_config(config)
    set_seed_from_config(config)
    set_device_from_config(config)
    # Define function to create task/env.
    # Create the controller/control_agent.
    if config.algo == "ppo" or config.algo == "rarl" or config.algo == "rap" or config.algo == "mpsc" or config.algo == "sac" or config.algo == "safe_explorer_ppo":
        env_func = partial(make, config.task, output_dir=config.output_dir, **config.task_config)
        control_agent = make(config.algo,
                            env_func,
                            training=True,
                            checkpoint_path=os.path.join(config.output_dir, "model_latest.pt"),
                            output_dir=config.output_dir,
                            device=config.device,
                            **config.algo_config)
    control_agent.reset()
    if config.restore:
        control_agent.load(os.path.join(config.restore, "model_latest.pt"))
    # Training.
    control_agent.learn()
    control_agent.close()
    print("Training done.")

def test_policy(config):
    """Run the (trained) policy/controller for evaluation.
    
    Usage
        * use with `--func test`.
        * to test policy from a trained model checkpoint, additionally use 
            `--restore {dir_path}` where `dir_path` is folder to the trained model.
        * to test un-trained policy (e.g. non-learning based), use as it is.

    """
    # Evaluation setup.
    if config.algo == "ppo" or config.algo == "mpsc" or config.algo == "rarl" or config.algo == "sac" or config.algo == "safe_explorer_ppo":
        set_device_from_config(config)
        if config.set_test_seed:
            # seed the evaluation (both controller and env) if given
            set_seed_from_config(config)
            env_seed = config.seed
        else:
            env_seed = None
        # Define function to create task/env.
        env_func = partial(make, config.task, seed=env_seed, output_dir=config.output_dir, **config.task_config)
        # Create the controller/control_agent.
        control_agent = make(config.algo,
                            env_func,
                            training=False,
                            checkpoint_path=os.path.join(config.output_dir, "model_latest.pt"),
                            output_dir=config.output_dir,
                            device=config.device,
                            seed=config.seed,
                            **config.algo_config)
        control_agent.reset()
        if config.restore:
            control_agent.load(os.path.join(config.restore, "model_latest.pt"))
        # Test controller.
        results = control_agent.run(n_episodes=25,
                                    render=True,
                                    verbose=config.verbose,
                                    use_adv=config.use_adv)
        # Save evalution results.
        try:
            eval_output_dir = config.eval_output_dir
        except:
            if config.eval_output_dir is not None:
                eval_output_dir = config.eval_output_dir
            else:
                eval_output_dir = os.path.join(config.output_dir, "eval")
        os.makedirs(eval_output_dir, exist_ok=True)
        # test trajs and statistics 
        eval_path = os.path.join(eval_output_dir, config.eval_output_path)
        os.makedirs(os.path.dirname(eval_path), exist_ok=True)
        # with open(eval_path, "wb") as f:
        #     pickle.dump(results, f)
        ep_lengths = results["ep_lengths"]
        ep_returns = results["ep_returns"]
        mse = results["mse"]
        msg = "eval_ep_length {:.2f} +/- {:.2f}\n".format(ep_lengths.mean(), ep_lengths.std())
        msg += "eval_ep_return {:.3f} +/- {:.3f}\n".format(ep_returns.mean(), ep_returns.std())
        msg += "eval_mse {:.3f} +/- {:.3f}\n".format(mse.mean(), mse.std())
        if "frames" in results:
            print("has frames")
            save_video(os.path.join(eval_output_dir, "video" + str(config.task_config.disturbances.dynamics[0].std) + ".gif"), results["frames"])
        control_agent.close()
        print("Evaluation done.")
    return [ep_lengths, ep_returns, mse]

def plot_results(config):
    noise = [0.05, 0.1, 0.15, 0.2, 0.25]
    fig, ax = plt.subplots()
    y = np.zeros((len(noise),1))
    x = np.asarray(noise)
    for test_n in noise:
        for i,n in enumerate(noise):
            config.restore = os.path.join("./baselines/experiment_results/experiment_results/rarl_cartpole", "wwn_" + str(test_n))
            config.output_dir = os.path.join("./baselines/experiment_results/experiment_results/rarl_cartpole", "wwn_" + str(n))
            config.task_config.disturbances.dynamics[0].std = n 
            config.eval_output_dir = os.path.join(config.output_dir, "test_with_"+str(test_n))
            [ep_lengths, ep_returns, mse] = test_policy(config)
            y[i] = np.mean(np.array(mse))
            print(np.mean(np.array(mse)))
        ax.plot(x, y, label="trained on" + str(test_n))
        name = "RARL NOISE vs. COST (comparison)"
        
        plt.title(name)
        plt.xlabel("sigma")
        plt.ylabel("Cost")
        ax.legend(loc='upper left', frameon=False)
        plt.savefig("noise_comparison_plot" + ".jpg")


MAIN_FUNCS = {"test": plot_results}

if __name__ == "__main__":
    # Make config.
    fac = ConfigFactory()
    fac.add_argument("--func", type=str, default="train", help="main function to run.")
    fac.add_argument("--thread", type=int, default=0, help="number of threads to use (set by torch).")
    fac.add_argument("--render", action="store_true", help="if to render in policy test.")
    fac.add_argument("--verbose", action="store_true", help="if to print states & actions in policy test.")
    fac.add_argument("--use_adv", action="store_true", help="if to evaluate against adversary.")
    fac.add_argument("--set_test_seed", action="store_true", help="if to set seed when testing policy.")
    fac.add_argument("--eval_output_dir", type=str, help="folder path to save evaluation results.")
    fac.add_argument("--eval_output_path", type=str, default="test_results.pkl", help="file path to save evaluation results.")
    config = fac.merge()
    # System settings.
    if config.thread > 0:
        # E.g. set single thread for less context switching
        torch.set_num_threads(config.thread)
    # Execute.
    func = MAIN_FUNCS.get(config.func, None)
    if func is None:
        raise Exception("Main function {} not supported.".format(config.func))
    func(config)   
