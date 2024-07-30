data "aws_ami" "amzn_linux_2023_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource aws_instance "jasjit_instance" {
  instance_type = "t2.micro"
  ami = data.aws_ami.amzn_linux_2023_ami.id
  tags = {
    Name = "jasjit_instance"
  }
}


