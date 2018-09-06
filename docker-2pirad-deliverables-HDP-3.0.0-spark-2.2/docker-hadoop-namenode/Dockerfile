FROM dtr.paxatadev.com/hortonworks/base:3.0.0-kerberos-8-hdp

# Add configuration files
COPY files/start-hadoop-namenode /usr/sbin/

# Change permission
RUN chmod 755 /usr/sbin/start-hadoop-namenode

# fs.defaultFS
EXPOSE 8020
# dfs.namenode.servicerpc-address
EXPOSE 8022
# dfs.namenode.http-address (HTTP)
EXPOSE 50070
# dfs.namenode.https-address (HTTPS)
EXPOSE 50470

############################################
#EXPOSE 9871
#EXPOSE 9870
#EXPOSE 9820

# Start hadoop name node
CMD ["start-hadoop-namenode"]
