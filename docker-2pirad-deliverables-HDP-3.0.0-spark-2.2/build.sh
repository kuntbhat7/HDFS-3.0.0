
# If network is not created then please run the command below, otherwise leave it commented out.
# docker network create hadoop-network

# Building the images to be used for the environment
docker build -t dtr.paxatadev.com/paxata/paxata-base:8-hdp docker-base
docker build -t docker-kerberos docker-kerberos
docker build -t dtr.paxatadev.com/hortonworks/base:3.0.0-kerberos-8-hdp docker-hadoop-base
docker build -t dtr.paxatadev.com/hortonworks/namenode:3.0.0-kerberos-8-hdp docker-hadoop-namenode
docker build -t dtr.paxatadev.com/hortonworks/datanode-nodemanager:3.0.0-kerberos-8-hdp docker-hadoop-datanode-nodemanager
docker build -t dtr.paxatadev.com/hortonworks/resourcemanager:3.0.0-kerberos-8-hdp docker-hadoop-resourcemanager
docker build -t dtr.paxatadev.com/hortonworks/spark:3.0.0-spark-2.2.0-kerberos-8-hdp docker-spark
docker build -t dtr.paxatadev.com/hortonworks/hive:3.0.0-kerberos-8-hdp docker-hive
#docker build -t dtr.paxatadev.com/hortonworks/pipeline:3.0.0-spark-2.2.0-kerberos-8-hdp docker-pipeline



