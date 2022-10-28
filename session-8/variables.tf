variable "env" {
  type        = string
  description = " This is a variable for environment "
  default     = "dev"
}


# variable for instanve type:
variable "instance_type" {
  type        = string
  description = " this is a variable for my instance type "
  default     = "t2.micro"
}