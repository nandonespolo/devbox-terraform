FROM ubuntu:18.04

RUN apt-get update -y

    # Install requirements
RUN apt-get install -y wget unzip vim python-pip && \
    pip install awscli && \
    pip install boto && \
    apt-get update -y

    # Install Terraform
RUN wget https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip && \
    unzip terraform_0.12.10_linux_amd64.zip -d terraform && \
    rm terraform_0.12.10_linux_amd64.zip && \
    mv /terraform/terraform /usr/local/bin/ && \
    export PATH=$PATH:/usr/local/bin/terraform

WORKDIR /workdir

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD tail -f /dev/null
