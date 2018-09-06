## Docker Hadoop Base
This image is based on the docker-base image and contains the HDP 2.6.3 installation. 
This image downloads HDP 2.6.3 tar file (hadoop-2.7.3.2.6.3.0-235.tar.gz) during build and put that in /usr/local/hadoop. 
This also sets related environment variables like HADOOP_HOME, HADOOP_CONF_DIR etc.

This also creates following OS users:
* hdfs
* yarn
* mapred
* spark
* hive
* paxata