resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg_instance.id]
  subnet_id              = aws_subnet.public-subnet-1.id
  user_data              = file("user_data.sh")
  key_name               = aws_key_pair.ts-key.id
  tags = {
    Name = "${var.env}-instance"
  }
}
resource "aws_key_pair" "ts-key" {
  key_name   = "id_rsa.pub"
  public_key = file("~/.ssh/id_rsa.pub")
}