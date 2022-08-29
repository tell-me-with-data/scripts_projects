#!/bin/bash
source /home/bryan/miniconda3/etc/profile.d/conda.sh
conda activate airflow_env
nohup airflow webserver --port 8000 > /home/bryan/airflow_logs/airflow_webserver.log 2> /home/bryan/airflow_logs/airflow_webserver.err &
nohup airflow scheduler > /home/bryan/airflow_logs/airflow_scheduler.log 2> /home/bryan/airflow_logs/airflow_scheduler.err & 