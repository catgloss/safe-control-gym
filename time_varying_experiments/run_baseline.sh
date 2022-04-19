#!/bin/bash
OUTPUT_DIR="test_2"
## PPO CARTPOLE
# python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole_new --thread 1 --seed 222 --func train
# python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_cartpole --thread 1 --seed 2222 --func test --restore ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR --eval_output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole/$OUTPUT_DIR 
# python3 main.py --algo ppo --task cartpole --overrides ./baselines/configs/ppo_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/ppo_cartpole_new/$OUTPUT_DIR --thread 1 --seed 555 --func plot

## PPO QUAD
# python3 main.py --algo ppo --task quadrotor --overrides ./baselines/configs/ppo_quad.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_quad --thread 1 --seed 222 --func train
# python3 main.py --algo ppo --task quadrotor --overrides ./baselines/configs/ppo_quad.yaml --output_dir ./baselines/experiment_results --tag experiment_results/ppo_quad --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/ppo_quad/seed222_Apr-07-20-51-30_v0.5.0-100-g49a7475 --eval_output_dir ./baselines/experiment_results/experiment_results/ppo_quad/seed222_Apr-07-20-51-30_v0.5.0-100-g49a7475
# python3 main.py --algo ppo --task quadrotor --overrides ./baselines/configs/ppo_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/ppo_quad/seed222_Apr-07-20-51-30_v0.5.0-100-g49a7475 --thread 1 --seed 222 --func plot

## GP_MPC CARTPOLE
# python3 main.py --algo gp_mpc --task cartpole --overrides ./baselines/configs/gp_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/gp_mpc_cartpole --thread 1 --func train
# python3 main.py --algo gp_mpc --task cartpole --overrides ./baselines/configs/gp_mpc_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/gp_mpc_cartpole --thread 1 --func test 

## GP_MPC QUAD
# python3 main.py --algo gp_mpc --task quadrotor --overrides ./baselines/configs/gp_mpc_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/gp_mpc_quad --thread 1 --func train
# python3 main.py --algo gp_mpc --task quadrotor --overrides ./baselines/configs/gp_mpc_quad.yaml --output_dir ./baselines/experiment_results/experiment_results/gp_mpc_quad --restore ./baselines/experiment_results/experiment_results/gp_mpc_quad/temp/seed79123_Mar-16-21-35-34_v0.5.0-83-gfb6c69a --thread 1 --func test

## RARL CARTPOLE
python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_cartpole --thread 1 --func train
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/rarl_cartpole/cyclic_0.2 --eval_output_dir ./baselines/experiment_results/experiment_results/rarl_cartpole/cyclic_0.2
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/rarl_cartpole/$OUTPUT_DIR --tag experiment_results/rarl_cartpole --thread 1 --func plot

## RARL QUAD
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_cartpole --thread 1 --func train
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rarl_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/rarl_cartpole/seed-_Apr-04-23-07-36_v0.5.0-96-g475df85 --eval_output_dir ./baselines/experiment_results/experiment_results/rarl_cartpole/seed-_Apr-04-23-07-36_v0.5.0-96-g475df85
# python3 main.py --algo rarl --task cartpole --overrides ./baselines/configs/rarl_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/rarl_cartpole/seed-_Apr-04-23-07-36_v0.5.0-96-g475df85 --tag experiment_results/rarl_cartpole --thread 1 --func plot

## Safe Explorer 
# python3 main.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/sac_cartpole --thread 1 --func train
# python3 main.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/sac_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/sac_cartpole/seed-_Apr-04-23-56-42_v0.5.0-96-g475df85 --eval_output_dir ./baselines/experiment_results/experiment_results/sac_cartpole/seed-_Apr-04-23-56-42_v0.5.0-96-g475df85
# python3 main.py --algo sac --task cartpole --overrides ./baselines/configs/sac_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/sac_cartpole/seed-_Apr-04-23-56-42_v0.5.0-96-g475df85 --tag experiment_results/sac_cartpole --thread 1 --func plot

## Safe PPO CARTPOLE
# python3 main.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/safe_explorer_cartpole --thread 1 --seed 222 --func train
# python3 main.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/safe_explorer_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/safe_explorer_cartpole/$OUTPUT_DIR --eval_output_dir ./baselines/experiment_results/experiment_results/safe_explorer_cartpole/$OUTPUT_DIR
# python3 main.py --algo safe_explorer_ppo --task cartpole --overrides ./baselines/configs/safe_explorer_cartpole.yaml --output_dir ./baselines/experiment_results/experiment_results/safe_explorer_cartpole/$OUTPUT_DIR --thread 1 --seed 222 --func plot

# noises=(0.15)

# for noise in "${noises[@]}"
# do
# python3 main.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rap_cartpole --thread 1 --func train --noise 0
# done 

# python3 main.py --algo rap --task cartpole --overrides ./baselines/configs/rap_cartpole.yaml --output_dir ./baselines/experiment_results --tag experiment_results/rap_cartpole --thread 1 --seed 222 --func test --restore ./baselines/experiment_results/experiment_results/rap_cartpole/seed-_Apr-16-10-45-07_v0.5.0-141-g94906c0 --eval_output_dir ./baselines/experiment_results/experiment_results/rap_cartpole/seed-_Apr-16-10-45-07_v0.5.0-141-g94906c0