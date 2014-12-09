#!/bin/bash
set -e
mkdir -p /home/hadoop/esri-git
cd /home/hadoop/esri-git

wget -S -T 10 -t 5 --no-check-certificate -O /home/hadoop/esri-git/gis-tools-hadoop-2.0.jar https://github.com/Esri/gis-tools-for-hadoop/releases/download/v2.0/gis-tools-hadoop-2.0.jar


	cp /home/hadoop/esri-git/* /home/hadoop/hive/lib/
	
cd /home/hadoop
wget https://s3-eu-west-1.amazonaws.com/emr-gis-bdigital/bootstrap/init_geo.sql
wget https://s3-eu-west-1.amazonaws.com/emr-gis-bdigital/bootstrap/update_bash.sh

exit 0
