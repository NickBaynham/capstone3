sudo apt update
sudo apt install -y ansible

# Install boto3 and boto-core
sudo apt-get -y install software-properties-common
sudo apt-add-repository -y universe
sudo apt-get update
sudo apt-get install -y python3-pip
pip3 install boto3

# Install Ansible AWS EC2 Inventory Source
ansible-galaxy collection install amazon.aws

# if you are using ansible 2.9 use this method:
cp /etc/ansible/ansible.cfg /etc/ansible/ansible.cfg.bak
cp ~/capstone3/devops_tools/config/ansible.cfg /etc/ansible/ansible.cfg

ansible --version
