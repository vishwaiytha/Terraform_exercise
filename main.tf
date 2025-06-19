
resource "aws_security_group" "webAppsec" {
    name = "web-app-sec"

    ingress {
        from_port = "22"
        to_port   = "22"
        protocol  = "tcp"
        cidr_blocks  = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  ="-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}

resource "aws_instance" "webApp1"{
    ami = "ami-06971c49acd687c30"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.webAppsec.name]

}

