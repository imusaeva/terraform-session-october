# variable for instance name
variable "env" {
  type        = string
  description = " This is a variable for environment "
  default     = "dev"
}

# variable for ami: 
variable "ami" {
  type        = string
  description = " this is a variable for my ami "
  default     = "ami-08e2d37b6a0129927"
}

# variable for instanve type:
variable "instance_type" {
  type        = string
  description = " this is a variable for my instance type "
  default     = "t2.micro"
}

variable "ingress_ports" {
  type        = list(string)
  description = "This is the list of ports for Ingress Rule"
  default     = ["22", "80", "443", "3306", "53"]
}

