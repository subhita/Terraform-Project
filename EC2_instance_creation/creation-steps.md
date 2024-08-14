Steps to create resource
Created a directory for Terraform project and created a Terraform configuration file main.tf in that directory. In this file, we can define the AWS provider and resources that we want to create. Here's a basic example:

   provider "aws" {
     region = "us-east-1"  # AWS region
   }

   resource "aws_instance" "instance_example" {
     ami           = "ami-0c55349cbfafe1f0"  # AMI ID
     instance_type = "t2.micro"
   }
Initialize Terraform**
In terminal, navigate to the directory containing your Terraform configuration files and run:

terraform init
This command initializes the Terraform working directory, downloading any necessary provider plugins.

Apply the Configuration
Run the following command to create the AWS resources defined in your Terraform configuration:

terraform apply
Terraform will display a plan of the changes it's going to make. Review the plan and type "yes" when prompted to apply it.

Verify Resources
After Terraform completes the provisioning process, you can verify the resources created in the AWS Management Console or by using AWS CLI commands.

Destroy Resources
If you want to remove the resources created by Terraform, you can use the following command:

terraform destroy
Be carefull when using terraform destroy as it will delete resources as specified in your Terraform configuration.
