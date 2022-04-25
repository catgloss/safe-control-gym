#!/bin/bash


noises_1=("0.0" "0.5" "0.75" "1.0" "1.5" "2.0" "2.5" "3.0" "3.5" "4.0")
noises_2=("0.0" "0.1" "0.15" "0.2")

## With training noise PPO white noise on actions

# for noise in "${noises_1[@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/train_on_noise_action/ppo/wn_$noise" --thread 1 --func train --noise $noise --device cuda
# done 

# for noise in "${noises_1[@]}"
# do 
#     python3 plot_controller_white_noise_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/train_on_noise/ppo/wn_$noise" --thread 1 --func plot --noise $noise --device cuda
# done

## With training noise RARL white noise on actions

# for noise in "${noises_1[@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/train_on_noise_action/rarl/wn_$noise" --thread 1 --func train --noise $noise --device cuda
# done 

# for noise in "${noises_1[@]}"
# do 
#     python3 plot_controller_white_noise_action.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/wn_${noise}" --thread 1 --func plot --noise $noise --device cuda
# done

## With training noise SAC white noise on dynamics

# for noise in "${noises_2[@]}"
# do 
#     python3 plot_controller_white_noise_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --restore "./baselines/experiment_results/experiment_results/sac_cartpole/wwn_${noise}" --output_dir "./baselines/experiment_results/experiment_results/sac_cartpole/wwn_${noise}" --eval_output_dir "./baselines/experiment_results/experiment_results/train_on_noise_dynamics/sac/wn_${noise}" --thread 1 --func plot --noise $noise
# done

# python3 plot_controller_step_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_dynamics" --thread 1 --func test

# python3 plot_controller_step_dynamics.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_dynamics" --thread 1 --func test

# python3 plot_controller_step_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_dynamics" --thread 1 --func test

# python3 plot_controller_step_dynamics.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_dynamics" --thread 1 --func test

# python3 plot_controller_step_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_dynamics" --thread 1 --func test

## Step Disturbance on Actions

# python3 plot_controller_step_actions.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_action" --thread 1 --func test

# python3 plot_controller_step_actions.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_action" --thread 1 --func test

# python3 plot_controller_step_actions.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_action" --thread 1 --func test

# python3 plot_controller_step_actions.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_action" --thread 1 --func test

# python3 plot_controller_step_actions.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_action" --thread 1 --func test

## Step Disturbances on Observations

# python3 plot_controller_step_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_observation" --thread 1 --func test

# python3 plot_controller_step_obs.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_observation" --thread 1 --func test

# python3 plot_controller_step_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_observation" --thread 1 --func test

# python3 plot_controller_step_obs.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_observation" --thread 1 --func test

# python3 plot_controller_step_obs.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/step_observation" --thread 1 --func test

## Impulse Disturbances on Dynamics

python3 plot_controller_impulse_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/impulse_dynamics" --thread 1 --func test

# python3 plot_controller_impulse_dynamics.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/impulse_dynamics" --thread 1 --func test

# python3 plot_controller_impulse_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/impulse_dynamics" --thread 1 --func test

# python3 plot_controller_impulse_dynamics.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/impulse_dynamics" --thread 1 --func test

# python3 plot_controller_impulse_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/impulse_dynamics" --thread 1 --func test


