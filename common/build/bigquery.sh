#!/bin/bash

# Import the settings from the common settings file
source ../project_settings.sh

# Create the dataset
# https://cloud.google.com/bigquery/docs/dataset-locations
bq --location=EU mk --dataset $PROJECT_NAME:"app_dataset_$ENV_TYPE"


bq mk --external_table_definition=bigquery_table_def.json "app_dataset_$ENV_TYPE.items"
