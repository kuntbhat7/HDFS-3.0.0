#Including the global variables file for the values
require_relative 'global-variables'

# Inspec container tests for Kerberos
describe docker_container('kdc.paxata.com') do
   it { should exist }  
   it { should be_running } 
   its('image') { should eq $KERBEROS_IMAGE }
   its('ports') { should eq '88/tcp, 749/tcp'}   
end

# Inspec container tests for NameNode
describe docker_container('namenode') do
   it { should exist }  
   it { should be_running } 
   its('image') { should eq $NAMENODE_IMAGE }
   its('ports') { should eq '8020/tcp, 8022/tcp, 50470/tcp, 0.0.0.0:50070->50070/tcp'}   
   its('command') { should eq 'start-hadoop-namenode' } 
end

# Inspec container tests for DataNode
describe docker_container('datanode') do
   it { should exist }  
   it { should be_running }
   its('image') { should eq $DATANODE_IMAGE }
   its('ports') { should eq "8010/tcp, 50010/tcp, 50075/tcp, 50090/tcp, 50475/tcp"}   
   its('command') { should eq "start-hadoop-datanode-nodemanager" } 
end

# Inspec container tests for ResourceManager
describe docker_container('resourcemanager') do
   it { should exist }  
   it { should be_running } 
   its('image') { should eq $RESOURCEMANAGER_IMAGE }
   its('ports') { should eq '8030-8033/tcp, 8090/tcp, 19888-19889/tcp, 0.0.0.0:8088->8088/tcp'}   
   its('command') { should eq 'start-hadoop-resourcemanager' } 
end

# Inspec container tests for PipeLine
describe docker_container('pipeline') do
   it { should exist }  
   it { should be_running } 
   its('image') { should eq $PIPELINE_IMAGE }
   its('ports') { should eq '4040/tcp, 8080-8081/tcp, 0.0.0.0:8090->8090/tcp'}
   its('command') { should eq '/root/bootstrap.sh' }   
end

# Inspec container tests for Postgres
describe docker_container('postgres') do
   it { should exist }  
   it { should be_running }
   its('image') { should eq $POSTGRES_IMAGE }  
   its('ports') { should eq '5432/tcp'}   
end

#Inspec container tests for Hive
describe docker_container('hive') do
   it { should exist }  
   it { should be_running } 
   its('image') { should eq $HIVE_IMAGE }
   its('ports') { should eq '9083/tcp, 10000-10002/tcp'}   
   its('command') { should eq 'start-hive' } 
end