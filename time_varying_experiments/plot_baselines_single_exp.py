import os 
import matplotlib.pyplot as plt
import numpy as np

path_base = "./baselines/experiment_results/experiment_results"
stats = ["ep_reward.log", "ep_return.log", "constraint_violation.log", "mse.log"]

for stat in stats: 
    fig, ax = plt.subplots()
    for dir in os.listdir(path_base):
        if dir in ["sac_cartpole", "ppo_cartpole_new", "safe_explorer_cartpole", "rarl_cartpole", "rap_cartpole"]: 
            name = "Training Data vs. " + stat.strip(".log") + " (no disturbances)"
            experiment = "no_disturbances"

            path_base_2 = os.path.join(path_base, os.path.join(dir, experiment))
            logs_path = "logs/stat_eval/"
            
            path = os.path.join(path_base_2, logs_path + stat)
            try: 
                with open(path, "r") as f:
                    lines = f.readlines()
            except: 
                continue
            # Labels.
            xk, yk = [k.strip() for k in lines[0].strip().split(",")]
            # Values.
            x, y = [], []
            for l in lines[1:]:
                data = l.strip().split(",")
                x.append(float(data[0].strip()))
                y.append(float(data[1].strip()))
            x = np.array(x)
            y = np.array(y)
            if stat in ["ep_reward.log", "ep_return.log"]:
                ax.set_xscale('log')
            ax.plot(x, y, label=dir.split('_')[0])
            plt.title(name)
            plt.xlabel("Training data")
            plt.ylabel("Cost")
            ax.legend(loc='best', frameon=False)

    plt.savefig(os.path.join("/Users/catherine/plot_no_disturbances/", experiment + dir.split("_")[0] + stat.strip(".log") + ".jpg"))
    fig.clear()