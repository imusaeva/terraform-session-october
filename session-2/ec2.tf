resource "aws_instance" "first_ec2" {
  ami           = "ami-08e2d37b6a0129927"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}


# resource = block
# aws_instance = first label = source type = predefined by terraform
# first_ec2 = second label = logical name or ID (name for the resource , has to be unique globally) = defined by author = it is a name for this entire resource
# it is a good practice to keep consistency in a code and use lower case with the code and _ - so the code will look clean

# Each block expect 2 labels , Resource expects 2 labels


# Each terraform configuration file has an extension called ".tf"
# terraform has 2 types of blocks :
# 1. Resource  - designed to create and manage resources (example:EC2), services and infrastructures
# 2. Data Source - 
 
# terraform does not care about indentation 

# the rule is simple if you open the { for arguments , you should close it 
# argument = consust of key/value , name/value = configuration of your resource , components of the resource 
# - key = predifiend by terraform
# - value = defined by author

# tags = predefined by terraform

# terraform.tfstate = desired state of your infrastructure , if you delete this file you will loose complete control of this infrastructure. this is the most sensitive file. it has everything single information about your infrastructure.
# in terraform , this file is called "Backend file"
# There are 2 types of backend:
# 1. local backend - is in within the working directory
# 2. remote backend - is in the remote storage such as s3 bucket , etc



