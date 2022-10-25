To create EC2 with Terraform:

resource = block

Each block expect 2 labels , Resource expects 2 labels
Each terraform configuration file has an extension called ".tf"
# Terraform has 2 types of blocks :
1. Resource  - designed to create and manage resources (example:EC2), services and infrastructures
2. Data Source - 
 
Terraform does not care about indentation 

The rule is simple if you open the { for arguments , you should close it 
Argument = consust of key/value , name/value = configuration of your resource , components of the resource 
# - key = predifiend by terraform
# - value = defined by author
# tags = predefined by terraform

# terraform.tfstate = desired state of your infrastructure , 
if you delete this file you will loose complete control of this infrastructure. This is the most sensitive file. 

in terraform , this file is called "Backend file"

# There are 2 types of backend:
local backend - is in within the working directory
2. remote backend - is in the remote storage such as s3 bucket , etc
