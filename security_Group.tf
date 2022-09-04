resource "aws_security_group" "sshhttp" {
  name        = "sshhttp"
  description = "Allow SSH amd HTTP inbound traffic"
  vpc_id = "vpc-138f397b"


  ingress {
    description      = "SSHHTTP from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }


    ingress {
    description      = "SSHHTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "myftsg"
  }
}