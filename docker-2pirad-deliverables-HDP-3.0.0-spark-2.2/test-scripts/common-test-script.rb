#Including the global variables file for the values
require_relative 'global-variables'

#Testing for OS
describe os[:family] do
  it { should eq $OS }
end

#Testing for java, gosu and other packages
describe command("java -version") do
  its('stderr') { should match $JAVA_VERSION }
  its('stdout') { should eq '' }
  its('exit_status') { should eq 0 }
end  

describe command('gosu').exist? do
  it { should eq true }
end

describe command("gosu root bash -c 'whoami'") do
  its('stdout') { should match 'root' }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

describe package('tar') do
  it { should be_installed }
end

describe package('wget') do
  it { should be_installed }
end

describe package('unzip') do
  it { should be_installed }
end

describe package('which') do
  it { should be_installed }
end

describe package('krb5-workstation') do
  it { should be_installed }
end

describe package('krb5-libs') do
  it { should be_installed }
end

#Testing for Hadoop and Yarn
describe command('hadoop version') do
  its('stdout') { should match $HADOOP_YARN_VERSION }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

describe command('yarn version') do  
  its('stdout') { should match $HADOOP_YARN_VERSION }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

#Checking for Environment variables
describe os_env('HADOOP_HOME') do
  its('content') { should eq '/usr/local/hadoop' }
end

describe os_env('HADOOP_CONF_DIR') do
  its('content') { should eq '/usr/local/hadoop/conf' }
end

describe os_env('JAVA_HOME') do
  its('content') { should eq '/usr/java/latest' }
end