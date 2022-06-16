

# # Test on cyclic (action)
python3 plot_controller_cyclic_action.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rarl/cyclic_action/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type cyclic --dist action
python3 plot_controller_cyclic_action.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/cyclic_action/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type cyclic --dist action
python3 plot_controller_cyclic_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/cyclic_action/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type cyclic --dist action
python3 plot_controller_cyclic_action.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/cyclic_action/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type cyclic --dist action


# # Test on cyclic (dynamics)
python3 plot_controller_cyclic_dynamics.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rarl/cyclic_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type cyclic
python3 plot_controller_cyclic_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/cyclic_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type cyclic
python3 plot_controller_cyclic_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/cyclic_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type cyclic
python3 plot_controller_cyclic_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/cyclic_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type cyclic


# # Test on cyclic (obs)
python3 plot_controller_cyclic_obs.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rarl/cyclic_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type cyclic
python3 plot_controller_cyclic_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/cyclic_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type cyclic
python3 plot_controller_cyclic_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/cyclic_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type cyclic
python3 plot_controller_cyclic_obs.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/cyclic_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type cyclic

# # Test on saw (action)
python3 plot_controller_cyclic_action.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rarl/saw_action/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type saw --dist action
python3 plot_controller_cyclic_action.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/saw_action/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type saw --dist action
python3 plot_controller_cyclic_action.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/saw_action/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type saw --dist action
python3 plot_controller_cyclic_action.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/saw_action/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type saw --dist action

# # Test on saw (dynamics)
python3 plot_controller_cyclic_dynamics.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rarl/saw_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type saw
python3 plot_controller_cyclic_dynamics.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/saw_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type saw
python3 plot_controller_cyclic_dynamics.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/saw_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type saw
python3 plot_controller_cyclic_dynamics.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/saw_dynamics/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type saw

# # Test on saw (obs)
python3 plot_controller_cyclic_obs.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rarl/saw_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cpu   --noise_type saw
python3 plot_controller_cyclic_obs.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/rap/saw_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cpu --noise_type saw
python3 plot_controller_cyclic_obs.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/ppo/saw_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type saw
python3 plot_controller_cyclic_obs.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir "./baselines/experiment_results/experiment_results/sac/saw_obs/std_0.0" --thread 1 --func test --noise 0.0 --device cuda --noise_type saw