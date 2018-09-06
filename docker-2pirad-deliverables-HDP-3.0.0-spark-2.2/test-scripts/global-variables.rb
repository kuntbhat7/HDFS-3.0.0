#Image Names
$KERBEROS_IMAGE = 'docker-kerberos'
$NAMENODE_IMAGE = 'dtr.paxatadev.com/hortonworks/namenode:3.0.0-kerberos-8-hdp'
$DATANODE_IMAGE = 'dtr.paxatadev.com/hortonworks/datanode-nodemanager:3.0.0-kerberos-8-hdp'
$RESOURCEMANAGER_IMAGE = 'dtr.paxatadev.com/hortonworks/resourcemanager:3.0.0-kerberos-8-hdp'
$PIPELINE_IMAGE = 'dtr.paxatadev.com/hortonworks/pipeline:3.0.0-spark-2.2.0-kerberos-8-hdp'
$POSTGRES_IMAGE = 'postgres:9'
$HIVE_IMAGE = 'dtr.paxatadev.com/hortonworks/hive:3.0.0-kerberos-8-hdp'

#Version values
$OS = 'redhat'
$JAVA_VERSION = '1.8.0_181'
$HADOOP_YARN_VERSION = '3.1.0.3.0.0.0-1634*'
$SPARK_VERSION = '2.3.1.3.0.0.0-1634'
$HIVE_VERSION = '3.1.0.3.0.0.0-1634'