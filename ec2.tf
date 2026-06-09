provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    key_name = "id"
    vpc_security_group_ids = ["sg-005b9e51ad6e35617"]
    tags = {
        Name = "myec2"
        name = "abhi"
        env = "dev"
    }
}
