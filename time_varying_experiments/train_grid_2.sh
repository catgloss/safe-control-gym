

noises_white_noise_dynamics=("0.0" "0.05" "0.1" "0.15" "0.25" "0.5" "0.75" "1.0" "1.5")
noises_white_noise_actions=("0.0" "0.5" "0.75" "1.0" "1.5" "2.0" "2.5" "3.0" "3.5" "4.0")
noises_white_noise_actions_rap=("1.5" "2.0" "2.5" "3.0" "3.5" "4.0")
noises_white_noise_obs=("0.0" "0.5" "0.75" "1.0" "1.5" "2.0" "2.5" "3.0" "3.5" "4.0")
noises_white_noise_actions_sac=("0.0" "0.5" "0.75" "1.0" "1.5")

## PPO ##

# for noise in "${noises_white_noise_actions[@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_action_2/std_$noise" --thread 1 --func train --noise $noise --device cpu
# done 

for noise in "${noises_white_noise_actions[@]}"
do
    python3 plot_controller_white_noise_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_action_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done

for noise in "${noises_white_noise_dynamics[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_dynamics_2/std_$noise" --thread 1 --func train --noise $noise --device cpu
done

for noise in "${noises_white_noise_dynamics[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_dynamics_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done

for noise in "${noises_white_noise_obs[@]}"
do 
    python3 plot_controller_white_noise_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_obs_2/std_$noise" --thread 1 --func train --noise $noise --device c
done

for noise in "${noises_white_noise_obs[@]}"
do 
    python3 plot_controller_white_noise_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_obs_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done

## RAP ##

for noise in "${noises_white_noise_actions_rap[@]}"
do
    python3 plot_controller_white_noise_action.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_action_2/std_$noise" --thread 1 --func train --noise $noise --device cpu
done 

for noise in "${noises_white_noise_actions[@]}"
do
    python3 plot_controller_white_noise_action.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_action_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done

for noise in "${noises_white_noise_dynamics[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_dynamics_2/std_$noise" --thread 1 --func train --noise $noise --device cpu
done

for noise in "${noises_white_noise_dynamics[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_dynamics_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done

for noise in "${noises_white_noise_obs[@]}"
do 
    python3 plot_controller_white_noise_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_obs_2/std_$noise" --thread 1 --func train --noise $noise --device cpu
done

for noise in "${noises_white_noise_obs[@]}"
do 
    python3 plot_controller_white_noise_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_obs_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done

## SAC ##

for noise in "${noises_white_noise_actions_sac[@]}"
do
    python3 plot_controller_white_noise_action.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_action_2/std_$noise" --thread 1 --func train --noise $noise --device cpu
done 

for noise in "${noises_white_noise_actions_sac[@]}"
do
    python3 plot_controller_white_noise_action.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_action_2/std_$noise" --thread 1 --func plot --noise $noise --device cpu
done


