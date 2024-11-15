from airflow import DAG
from airflow.providers.http.operators.http import HttpOperator
from datetime import datetime

default_args = {
    'owner': 'airflow',
    'start_date': datetime(2023, 1, 1),
    'retries': 1,
}

dag = DAG('nifi_workflow', default_args=default_args, schedule='@daily')

start_nifi = HttpOperator(
    task_id='start_nifi_flow',
    http_conn_id='nifi',
    endpoint='nifi-api/process-groups/<process_group_id>/start',
    method='POST',
    dag=dag,
)

stop_nifi = HttpOperator(
    task_id='stop_nifi_flow',
    http_conn_id='nifi',
    endpoint='nifi-api/process-groups/<process_group_id>/stop',
    method='POST',
    dag=dag,
)

start_nifi >> stop_nifi
