The necessary jars are either on a S3 bucket, or they are pulled directly from ESRI's website.
This is the bucket:

https://s3-eu-west-1.amazonaws.com/emr-gis-bdigital/bootstrap/

To create a new instance of EC2, with all the necessary patches, either clone one of the existing instances, or set this 3 bootstrap actions (by this exact order):
- s3://eu-west-1.elasticmapreduce/bootstrap-actions/install-ganglia -> installs Ganglia
- s3://emr-gis-bdigital/bootstrap/init_gis_cluster.sh -> downloads jars to the home of the new instance, and creates a load script for hive
- s3://emr-gis-bdigital/bootstrap/init_cluster.sh -> updates bash

                      have fun! :-) 
