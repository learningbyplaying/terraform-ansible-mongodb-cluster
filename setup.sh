#Install Ansible
apt-get install python -y && \
apt-add-repository ppa:ansible/ansible && \
apt-get update && \
apt-get install ansible -y

#Install terraform
apt-get update && \
apt-get install unzip -y && \
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip && \
unzip terraform_0.11.7_linux_amd64.zip

NEW_PATH=$(pwd)
#echo $NEW_PATH

echo "export PATH=$PATH:$NEW_PATH"
