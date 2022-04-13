import os 
import matplotlib.pyplot as plt
import numpy as np

path_base = "./baselines/experiment_results/experiment_results"
stats = ["ep_reward.log", "ep_return.log", "constraint_violation.log", "mse.log"]

for stat in stats: 
    name = os.path.join("/Users/catherine/plots", stat.strip(".log"))
    fig, ax = plt.subplots()
    for dir in os.listdir(path_base):
        if dir in ["sac_cartpole_new", "ppo_cartpole", "safe_explorer_cartpole", "rarl_cartpole"]: 
            if dir == "sac_cartpole_new" : 
                experiment = ""
            else:
                experiment = sorted(os.listdir(os.path.join(path_base, dir)))[-1]
            path_base_2 = os.path.join(path_base, os.path.join(dir, experiment))
            if dir == "rarl_cartpole":
                logs_path = "logs/stat/"
            else:
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
            ax.plot(x, y, label=dir.split("_")[0])
            plt.title(name)
            plt.xlabel(xk)
            plt.ylabel(yk)
            ax.legend(loc='upper left', frameon=False)

    plt.savefig(name + ".jpg")
    fig.clear()