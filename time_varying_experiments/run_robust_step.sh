#!/bin/bash


python3 plot_controller_step_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_dynamics" --thread 1 --func test





