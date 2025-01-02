# Resource: EC2 Instance
resource "aws_instance" "ubuntu-instance" {
  ami = "ami-05d38da78ce859165"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install-ubuntu.sh")
  tags = {
    "Name" = "Ubuntu EC2 Demo"
  }
}

resource "aws_instance" "al2023-instance" {
  ami = "ami-07d9cf938edb0739b"
  instance_type = "t3.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "AL2023 EC2 Demo"
  }
}