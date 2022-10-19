resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux_2.image_id  
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ]  # refrence is dynamic
  user_data = data.template_file.user_data.rendered
  
  tags = {
    Name        = var.env
  }

  #resource "aws_instance" "frontend" {
  #ami           = data.aws_ami.amazon_linux_2.image_id  
  #instance_type = var.instance_type
  #vpc_security_group_ids = [ aws_security_group.web.id ]  # refrence is dynamic
  #user_data = data.template_file.user_data.rendered
  
  #tags = {
    #Name        = "${var.env}-frontend-instance" - prefered to use this function
    #Name2       = format("%s-instance",var.env) - this is a format function it works the same with the variable function
  #}
}

