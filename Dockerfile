FROM amazon/aws-cli:latest

# install VS Code dependencies and useful utilities
RUN yum -y install gzip \
    openssh-clients \
    tar

# install the session manager plugin
# see: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-linux
RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm" -o "session-manager-plugin.rpm" && \
    yum -y install session-manager-plugin.rpm && \
    rm session-manager-plugin.rpm
