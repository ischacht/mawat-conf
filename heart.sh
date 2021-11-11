#!/bin/bash

my_date=$(date +"%D")
my_time=$(date +"%H:%M:%S")
echo $(date)
curl -H "Content-Type: application/json" -H "Device-Token: 9e267fdb-6b01-48ff-9d36-db7af6eef786" -X POST -d '[{"variable":"Ping","value":"'$my_time'"},{"variable":"temperatura","value":1000}]' https://75.2.65.153/data -k