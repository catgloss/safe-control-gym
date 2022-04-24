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

for noise in "${noises_2[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --restore "./baselines/experiment_results/experiment_results/sac_cartpole/wwn_${noise}" --output_dir "./baselines/experiment_results/experiment_results/sac_cartpole/wwn_${noise}" --output_dir "./baselines/experiment_results/experiment_results/train_on_noise_dynamics/sac/wn_${noise}" --thread 1 --func plot --noise $noise
done





