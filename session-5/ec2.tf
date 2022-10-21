resource "aws_instance" "main" {
  count                  = 3 # meta argument
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id] # refrence is dynamic

  tags = {
    Name = "${var.env}-${count.index}"
  }
}

# count = 3 (Numeric) =  it means 1,2,3
# count.index (Index) = 0,1,2

# Reference to resource
# first_label.second_label.attribute
# refrence is dynamic , they don't use double quatations ""

# aws_security_group.web.id :
# aws_security_group = first label
# web = second label - you define it once and never touch again. This logical name is important 
# id = attribute 

# Data type:
# 1. string = always uses double quotations
# 2. number = never uses quotations
# 3. Boolean = never uses quotations

# What is a list?
# Car = [ Mercedes, Audi,BMW ] with a list data types are the same