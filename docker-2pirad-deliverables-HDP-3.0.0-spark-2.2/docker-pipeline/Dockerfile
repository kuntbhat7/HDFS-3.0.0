FROM dtr.paxatadev.com/hortonworks/spark:2.6.3-spark-2.2.0-kerberos-8-hdp

EXPOSE 4040 8090 
WORKDIR /usr/local/paxata/pipeline

# Need to download the pipeline zip artifact from TC 
COPY files/pipeline /usr/local/paxata/pipeline
# COPY files/pipeline.jar /usr/local/paxata/pipeline/pipeline.jar
COPY files/init-script/paxata-pipeline /etc/init.d/paxata-pipeline
COPY files/bootstrap.sh /root/
RUN chmod 755 /root/bootstrap.sh
# Copy Confd template resource files
COPY files/*.toml /etc/confd/conf.d/
# Copy Confd source templates
COPY files/*.tmpl /etc/confd/templates/
COPY files/paxata-pipeline.sh /usr/local/paxata/pipeline/

# download and install confd
RUN curl -qL https://github.com/kelseyhightower/confd/releases/download/v0.12.0-alpha3/confd-0.12.0-alpha3-linux-amd64 -o /usr/local/bin/confd && chmod +x /usr/local/bin/confd

RUN chmod 755 /etc/init.d/paxata-pipeline

ENTRYPOINT ["/root/bootstrap.sh"]
