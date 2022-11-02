module "ec2" {
    source = "github.com/imusaeva/terraform-session-october//modules/ec2"
    env = "dev"
    instance_type = "t2.micro"
    ami = "ami-09d3b3274b6c5d4aa"
}
# github.com = main domain
# imusaeva = Organization
# terraform-session-october = repository
# tree = root for all branches
# main = branch
# modules = directory
# ec2 = subdirectory