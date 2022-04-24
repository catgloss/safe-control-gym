#!/bin/bash

## PPO CARTPOLE
# python3 plot_controller_white_noise.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR --eval_output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR 

# python3 plot_controller_white_noise_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_obs.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_obs.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_obs.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test


# python3 plot_controller_white_noise_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_dynamics.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_dynamics.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

# python3 plot_controller_white_noise_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

python3 plot_controller_white_noise_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir ./baselines/experiment_results/white_noise_obs --thread 1 --seed 222 --func test

