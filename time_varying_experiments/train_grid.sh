
# noises_step_dynamics=("0.0", "0.025", "0.05", "0.075", "0.1", "0.125", "0.15", "0.2", "0.25", "0.3")
# noises_step_actions=("0.0", "0.25", "0.5", "0.75", "1.0", "1.25", "1.5", "1.75", "2.0", 2.25, 2.5)
# noises_step_obs=(0.0, 0.01, 0.025, 0.05, 0.075, 0.1, 0.125, 0.15)
noises_white_noise_dynamics=("0.0" "0.05" "0.1" "0.15" "0.25" "0.5" "0.75" "1.0" "1.5")
noises_white_noise_actions=("0.0" "0.5" "0.75" "1.0" "1.5" "2.0" "2.5" "3.0" "3.5" "4.0")
noises_white_noise_obs=("0.0" "0.5" "0.75" "1.0" "1.5" "2.0" "2.5" "3.0" "3.5" "4.0")
# noises_impulse_dynamics=(0.0, 0.5, 1.0, 1.5, 2.0, 2.5,  3.0, 4.0, 5.0, 6.0, 7.0)
# noises_impulse_actions=(0, 10, 25, 50, 60, 70, 80, 90, 100, 110)
# noises_impulse_obs=(0, 10, 25, 50, 75, 100, 200, 300, 400)

## PPO ##

for noise in "${noises_white_noise_actions[@]}"
do
    python3 plot_controller_white_noise_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_action/std_$noise" --thread 1 --func train --noise $noise --device cuda
done 

for noise in "${noises_white_noise_actions[@]}"
do
    python3 plot_controller_white_noise_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_action/std_$noise" --thread 1 --func plot --noise $noise --device cuda
done

for noise in "${noises_white_noise_dynamics[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_dynamics/std_$noise" --thread 1 --func train --noise $noise --device cuda
done

for noise in "${noises_white_noise_dynamics[@]}"
do 
    python3 plot_controller_white_noise_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_dynamics/std_$noise" --thread 1 --func plot --noise $noise --device cuda
done

for noise in "${noises_white_noise_obs[@]}"
do 
    python3 plot_controller_white_noise_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_obs/std_$noise" --thread 1 --func train --noise $noise --device cuda
done

for noise in "${noises_white_noise_obs[@]}"
do 
    python3 plot_controller_white_noise_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/white_noise_obs/std_$noise" --thread 1 --func plot --noise $noise --device cuda
done


## SAC ##

# for noise in "${noises_white_noise_actions(@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_action/std_$noise" --thread 1 --func train --noise $noise --device cuda
# done 

# for noise in "${noises_white_noise_actions(@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_action/std_$noise" --thread 1 --func plot --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_dynamics[@]}"
# do 
#     python3 plot_controller_white_noise_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_dynamics/std_$noise" --thread 1 --func train --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_dynamics[@]}"
# do 
#     python3 plot_controller_white_noise_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_dynamics/std_$noise" --thread 1 --func plot --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_obs[@]}"
# do 
#     python3 plot_controller_white_noise_obs.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_dynamics/std_$noise" --thread 1 --func train --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_obs[@]}"
# do 
#     python3 plot_controller_white_noise_obs.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/white_noise_dynamics/std_$noise" --thread 1 --func plot --noise $noise --device cuda
# done

## RAP ##

# for noise in "${noises_white_noise_actions(@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_action/std_$noise" --thread 1 --func train --noise $noise --device cuda
# done 

# for noise in "${noises_white_noise_actions(@]}"
# do
#     python3 plot_controller_white_noise_action.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_action/std_$noise" --thread 1 --func plot --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_dynamics[@]}"
# do 
#     python3 plot_controller_white_noise_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_dynamics/std_$noise" --thread 1 --func train --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_dynamics[@]}"
# do 
#     python3 plot_controller_white_noise_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_dynamics/std_$noise" --thread 1 --func plot --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_obs[@]}"
# do 
#     python3 plot_controller_white_noise_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_dynamics/std_$noise" --thread 1 --func train --noise $noise --device cuda
# done

# for noise in "${noises_white_noise_obs[@]}"
# do 
#     python3 plot_controller_white_noise_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/white_noise_dynamics/std_$noise" --thread 1 --func plot --noise $noise --device cuda
# done