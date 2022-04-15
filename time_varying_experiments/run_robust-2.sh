#!/bin/bash
OUTPUT_DIR="with_white_noise_0.15"
## PPO CARTPOLE
# python3 plot_controller_white_noise.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR --eval_output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR 

python3 plot_controller_white_noise_2.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results/rarl_cartpole_white_noise --thread 1 --seed 222 --func test