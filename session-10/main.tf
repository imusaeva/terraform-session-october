####### calling module from our github repo ######
# module "ec2" {
    # source = "github.com/imusaeva/terraform-session-october//modules/ec2?ref=v1.0.0"
    # env = "dev"
    # instance_type = "t2.micro"
    # ami = "ami-09d3b3274b6c5d4aa"
# }

# github.com = main domain
# imusaeva = Organization
# terraform-session-october = repository
# tree = root for all branches
# main = branch
# modules = directory
# ec2 = subdirectory

########## calling modules from terraform registry.io #######
module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "3.18.1"
}