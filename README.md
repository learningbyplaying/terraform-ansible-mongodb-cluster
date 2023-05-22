# References:

https://blog.eleven-labs.com/en/deploy-a-replicated-mongodb-on-aws-with-terraform-and-ansible/

# Setup:

## Environment

  sudo ./setup.sh

  terraform init

## Setup AWS

  sudo ./scripts/aws-cli-install.sh
  aws configure

## Credentials

 - AMI Role on EC2 as Amin: Create an admin role that can manage EC2 on AMI > Roles.
 Then attach the role to an EC2.
 - Other

#Terraform Commands:

  terraform plan [dir] #Example: terraform plan ./templates/aws/test

  terraform apply [dir]

  terraform destroy [dir]

#Ansible Commands:

  ./play.sh
