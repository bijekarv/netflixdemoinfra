provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-091dccf4e2d272bae"
instance_type = "t2.micro"
key_name = "kp"
vpc_security_group_ids = ["sg-094906e3040fd4199"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
