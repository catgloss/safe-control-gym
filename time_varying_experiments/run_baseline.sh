python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole_w_disturbance --thread 1 --seed 222 --func train
# python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole_w_disturbance/seed222_Feb-24-17-02-14_v0.5.0-62-g0a6ad5c --thread 1 --seed 222 --func plot
# python3 main.py --algo gp_mpc --task cartpole --overrides ./baselines/configs/gp_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/gp_mpc_cartpole --thread 1 --func train
# python3 main.py --algo gp_mpc --task quadrotor --overrides ./baselines/configs/gp_mpc_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/gp_mpc_quad_w_disturb --thread 1 --func train
# python3 main.py --algo gp_mpc --task quadrotor --overrides ./baselines/configs/gp_mpc_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/gp_mpc_quad/temp/seed79123_Feb-15-21-42-01_v0.5.0-60-g2c19e6c --thread 1 --func plot
# python3 main.py --algo linear_mpc --task cartpole --overrides ./baselines/configs/linear_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/linear_mpc_cartpole --thread 1 --func train
# python3 main.py --algo mpsc --task cartpole --overrides ./baselines/configs/mpsc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/mpsc_cartpole --thread 1 --func train
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_cartpole --thread 1 --func train
# python3 main.py --algo rarl --task quadrotor --overrides ./baselines/configs/rarl_quad.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_quad --thread 1 --func train