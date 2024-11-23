# EC2 Instances
resource "aws_instance" "web_instance" {
  count         = 2
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet[count.index].id

  # Use vpc_security_group_ids for instances in a VPC
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "Web Instance ${count.index + 1}"
  }
}

