FROM dtr.paxatadev.com/paxata/paxata-base:8-hdp

# Related variables
ARG HADOOP_DOWNLOAD_URL=https://s3.amazonaws.com/public-repo-1.hortonworks.com/HDP/centos7/3.x/updates/3.0.0.0/tars/hadoop/hadoop-3.1.0.3.0.0.0-1634.tar.gz

# Default Conf Directory in 3.0.0 is /usr/local/hadoop/conf
ENV HDP_VERSION=3.0.0
ENV HADOOP_HOME=/usr/local/hadoop
ENV HADOOP_CONF_DIR=/etc/hadoop/conf
ENV PATH=$PATH:${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin

# Install Hadoop
RUN HADOOP_ARCHIVE_NAME="${HADOOP_DOWNLOAD_URL##*/}" && \
    wget ${HADOOP_DOWNLOAD_URL} && \
    mkdir -p ${HADOOP_HOME} /etc/hadoop && \
    tar -xzf ${HADOOP_ARCHIVE_NAME} -C ${HADOOP_HOME} --strip-components 1 && \
    rm ${HADOOP_ARCHIVE_NAME}

RUN ln -s ${HADOOP_HOME}/etc/hadoop ${HADOOP_CONF_DIR} && \
    ln -s ${HADOOP_HOME}/etc/hadoop ${HADOOP_HOME}/conf

COPY files/hadoop-conf ${HADOOP_CONF_DIR}

# Create users
RUN groupadd hadoop && \
    useradd -ms /bin/bash -Ng hadoop hdfs && \
    useradd -ms /bin/bash -Ng hadoop yarn && \
    useradd -ms /bin/bash -Ng hadoop mapred && \
    useradd -ms /bin/bash -Ng hadoop spark && \
    useradd -ms /bin/bash -Ng hadoop hive && \
    useradd -ms /bin/bash -Ng hadoop paxata

RUN chown -R root:root ${HADOOP_HOME}
