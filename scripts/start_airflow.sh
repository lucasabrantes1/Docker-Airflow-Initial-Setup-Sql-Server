#!/bin/bash

# Iniciar o Airflow
airflow db init
airflow webserver --port 8080 &
airflow scheduler
