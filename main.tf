provider "aws" {
  region     = "ap-south-1"
}

resource "aws_security_group" "webserver_access" {
        name = "webserver_access"
        description = "allow ssh and http"
        vpc_id      = "vpc-0c9f229e3b5927265"
        ingress {
                from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        ingress {
                from_port = 22
                to_port = 22
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }

        egress {
                from_port = 0
                to_port = 0
                protocol = "-1"
                cidr_blocks = ["0.0.0.0/0"]
        }


}


resource "aws_instance" "ourfirst" {
  ami           = "ami-03bb6d83c60fc5f7c"
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.webserver_access.name}"]
  key_name = "hello-key"
  user_data = <<-EOF
        
  EOF

  tags = {
    Name  = "hello-docker"
  }

}
