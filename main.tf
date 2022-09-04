## EC2 Instance


provider "aws" {
  # Configuration options
 # access_key = AKIAUV4JYJWTXRMRD5QA
 # secret_key = AKIAUV4JYJWTXRMRD5QAdgfhgrjghmf
 # region = us-east-1
}

resource "aws_instance" "webserver" {
ami = "ami-0568773882d492fc8"
instance_type = "t2.micro"
key_name = "ohio-new"
user_data = "${file("apache.sh")}"
vpc_security_group_ids = [ aws_security_group.sshhttp.id ]


}
