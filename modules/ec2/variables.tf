variable "ami" {
    type = string
    description = "Amazon machine image"
    default = "ami-09d3b3274b6c5d4aa"
}
variable "instance_type" {
    type = string
    description = "Size of EC2"
    default = "t2.micro"
}
variable "env" {
    type = string
    description = "Environment variable"
    default = "dev"
}
variable "s3_bucket_name" {
    type = string
    description = "S3 bucket name for application to upload imades"
    default = "test" # we don't know it now
}