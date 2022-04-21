#!/bin/bash

## PPO CARTPOLE
# python3 plot_controller_white_noise.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR --eval_output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR 

python3 plot_controller_white_noise_cyclic.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results/compare_baselines --thread 1 --seed 222 --func test

