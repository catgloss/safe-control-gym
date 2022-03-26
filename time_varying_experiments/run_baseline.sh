## PPO CARTPOLE
# python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole --thread 1 --seed 222 --func train
python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/ppo_cartpole/seed222_Mar-26-15-32-46_v0.5.0-85-gea98146 
# python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole/seed222_Mar-26-15-32-46_v0.5.0-85-gea98146 --thread 1 --seed 222 --func plot

## GP_MPC CARTPOLE
# python3 main.py --algo gp_mpc --task cartpole --overrides ./baselines/configs/gp_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/gp_mpc_cartpole --thread 1 --func train
# python3 main.py --algo gp_mpc --task cartpole --overrides ./baselines/configs/gp_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/gp_mpc_cartpole --thread 1 --func test 

## GP_MPC QUAD
# python3 main.py --algo gp_mpc --task quadrotor --overrides ./baselines/configs/gp_mpc_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/gp_mpc_quad --thread 1 --func train
# python3 main.py --algo gp_mpc --task quadrotor --overrides ./baselines/configs/gp_mpc_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/gp_mpc_quad --restore ./baselines/experiment_results/experiment_results/gp_mpc_quad/temp/seed79123_Mar-16-21-35-34_v0.5.0-83-gfb6c69a --thread 1 --func test

## LINEAR MPC
# python3 main.py --algo linear_mpc --task cartpole --overrides ./baselines/configs/linear_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/linear_mpc_cartpole --thread 1 --func test

## MPSC
# python3 main.py --algo mpsc --task cartpole --overrides ./baselines/configs/mpsc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/mpsc_cartpole --thread 1 --func train

## RARL 
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_cartpole --thread 1 --func train
# python3 main.py --algo rarl --task quadrotor --overrides ./baselines/configs/rarl_quad.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_quad --thread 1 --func train

## RAP
# python3 main.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rap_cartpole --thread 1 --func train