variable "bucket_name" {
    type = string
    description = "This is a variable for s3 bucket name . Bucket name has to be unique  , lower case , no special characters"
    default = "terraform-module-test-bucket-irina"
}

variable "env" {
    type = string
    description = "Environment variable"
    default = "dev"
}

variable "bucket_acl" {
    type = string
    description = "Bucket level Access Control List . Values can be  'private' or 'public'. "
    default = "private"
}