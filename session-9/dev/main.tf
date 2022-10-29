# Terraform module: 
# local module = module in your file system
# remote module = module is in remote system such as SCm , HTTP Url etc

module "s3" {
  source = "../../modules/s3" # whre the child module is

  ###### Variables ######
  env         = "dev"
  bucket_name = "terraform-module-test-bucket-irina"
  bucket_acl  = "private"
}

module "ec2" {
  source        = "../../modules/ec2"
  env           = "dev"
  instance_type = "t2.micro"
  ami           = "ami-09d3b3274b6c5d4aa"
  s3_bucket_name = module.s3.s3_bucket_name # reference to child module outputs = module.module_name.output_name
}