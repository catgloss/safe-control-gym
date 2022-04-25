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

def plot():
    files = ['ppo_dynamics_test.npy', 'rarl_dynamics_test.npy', 'sac_dynamics_test.npy', 'rap_dynamics_test.npy', "safe_explorer_ppo_dynamics_test.npy"]
    x = np.array([0.0, 0.01, 0.03, 0.05, 0.075, 0.1, 0.125, 0.15])
    fig, ax = plt.subplots()
    for file in files:
        results = np.load(os.path.join("./baselines/experiment_results/experiment_results/step_dynamics", file))
        y = np.array(results[:x.shape[0]])

        ax.plot(x, y, label=file.split('_')[0])
        name = "Step on dynamics vs. Cost"
        plt.title(name)
        plt.xlabel("sigma")
        plt.ylabel("Cost")
        ax.legend(loc='best', frameon=False)
    plt.savefig("step_dynamics_all.jpg")

plot()
