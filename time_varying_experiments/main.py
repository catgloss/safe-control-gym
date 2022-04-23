"""Template training/plotting/testing script.

"""
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
    # config.task_config.disturbances.dynamics[0].std = config.noise
    # print(config.task_config.disturbances.dynamics[0].std)
    # breakpoint()
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
    if config.algo == "gp_mpc":
        env_func = partial(make, config.task, **config.task_config)
        control_agent = make(config.algo,
                    env_func,
                    training=True,
                    output_dir=config.output_dir,
                    checkpoint_path=os.path.join(config.output_dir, "model_latest.pt"),
                    logging=True,
                    device=config.device,
                    **config.algo_config)
    elif config.algo == "linear_mpc":
        env_func = partial(make, config.task, **config.task_config)
        control_agent = make(config.algo,
                    env_func,
                    training=True,
                    output_dir=config.output_dir,
                    checkpoint_path=os.path.join(config.output_dir, "model_latest.pt"),
                    logging=True,
                    device=config.device,
                    **config.algo_config)
    control_agent.reset()
    if config.restore:
        control_agent.load(os.path.join(config.restore, "model_latest.pt"))
    # Training.
    control_agent.learn()
    control_agent.close()
    print("Training done.")


def make_plots(config):
    """Produces plots for logged stats during training.
    
    Usage
        * use with `--func plot` and `--restore {dir_path}` where `dir_path` is 
            the experiment folder containing the logs.
        * save figures under `dir_path/plots/`.

    """
    # Define source and target log locations.
    log_dir = os.path.join(config.output_dir, "logs")
    plot_dir = os.path.join(config.output_dir, "plots")
    mkdirs(plot_dir)
    plot_from_logs(log_dir, plot_dir, window=3)
    print("Plotting done.")


def test_policy(config):
    """Run the (trained) policy/controller for evaluation.
    
    Usage
        * use with `--func test`.
        * to test policy from a trained model checkpoint, additionally use 
            `--restore {dir_path}` where `dir_path` is folder to the trained model.
        * to test un-trained policy (e.g. non-learning based), use as it is.

    """
    # Evaluation setup.
    if config.algo == "cbf" or config.algo == "ppo" or config.algo == "mpsc" or config.algo == "rarl" or config.algo == "sac" or config.algo == "safe_explorer_ppo" or config.algo == "rap" or config.algo == "ilqr":
        set_device_from_config(config)
        if config.set_test_seed:
            # seed the evaluation (both controller and env) if given
            set_seed_from_config(config)
            env_seed = config.seed
        else:
            env_seed = None
        # Define function to create task/env.


        # config.task_config.disturbances.dynamics[0].std = config.noise
        config.task_config.disturbances.action[0].std = config.noise
        # print(env_seed)
        # breakpoint()
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
        print(config.render)
        breakpoint()
        results = control_agent.run(n_episodes=config.algo_config.eval_batch_size,
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
        with open(eval_path, "wb") as f:
            pickle.dump(results, f)
        ep_lengths = results["ep_lengths"]
        ep_returns = results["ep_returns"]
        mse = results["mse"]
        msg = "eval_ep_length {:.2f} +/- {:.2f}\n".format(ep_lengths.mean(), ep_lengths.std())
        msg += "eval_ep_return {:.3f} +/- {:.3f}\n".format(ep_returns.mean(), ep_returns.std())
        msg += "eval_mse {:.3f} +/- {:.3f}\n".format(mse.mean(), mse.std())
        print(msg)
        if "frames" in results:
            print("has frames")
            save_video(os.path.join(eval_output_dir, "video.gif"), results["frames"])
        control_agent.close()
        print("Evaluation done.")
    elif config.algo == "gp_mpc":
        try:
            eval_output_dir = config.eval_output_dir
        except:
            if config.eval_output_dir is not None:
                eval_output_dir = config.eval_output_dir
            else:
                eval_output_dir = os.path.join(config.output_dir, "eval")
        set_device_from_config(config)
        if config.set_test_seed:
            # seed the evaluation (both controller and env) if given
            set_seed_from_config(config)
            env_seed = config.seed
        else:
            env_seed = None
        # Define function to create task/env.
        # init_state = {'init_x': -0.5,
        #           'init_x_dot': 0.0,
        #           'init_z': 0.2,
        #           'init_z_dot': 0.0,
        #           'init_theta': 0.0,
        #           'init_theta_dot': 0.0
        #           }
        set_seed_from_config(config)
        set_device_from_config(config)
        # config.disturbances.dynamics[0].std = config.noise
        # print(config.disturbances.dynamics[0].std)
        env_func = partial(make, config.task, output_dir=config.output_dir, **config.task_config)
        mse = []
        frames = []
        for i in range(0,1):
            # state = np.random.uniform(low=[-0.4, -0.4, -0.35, -0.15], high=[0.4, 0.4, 0.35, 0.15], size=(4,))
            state = [0.2, 0.2, 0.15, -0.1]
            print(state)
            init_state = {'init_x': state[0],
                  'init_x_dot': state[1],
                  'init_theta': state[2],
                  'init_theta_dot': state[3]
                  }
            test_env = env_func(init_state=init_state, randomized_init=True, seed=222)
            # Create the controller/control_agent.
            control_agent = make(config.algo,
                        env_func,
                        training=True,
                        output_dir=config.output_dir,
                        checkpoint_path=os.path.join(config.output_dir, "model_latest.pt"),
                        logging=True,
                        device=config.device,
                        **config.algo_config)
            control_agent.reset()
            # control_agent.learn()
            results = control_agent.run(env=test_env,
                                        render=True,
                                        max_steps=100)
            mse.append(results["mse"])
            print(np.mean(mse))
            frames.extend(results['frames'])
        if "frames" in results:
            print("has frames")
            save_video(os.path.join(eval_output_dir, "video.gif"), frames)
        control_agent.close()
        print("Evaluation done.")


MAIN_FUNCS = {"train": train, "plot": make_plots, "test": test_policy}

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
    fac.add_argument("--noise", type=float, default=0.15, help="" )
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


