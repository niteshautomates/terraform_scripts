resource "aws_security_group" "security-group-tf" {
  name        = "Allow SSH"
  description = "Security group created by terraform"
  dynamic "ingress" {
    for_each = [22, 80, 443, 3306, 27017, 300, 8080]
    iterator = port
    content {
      description = "Allow from VPC"
      from_port   = port.value
      to_port     = port.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #   ingress {
  #     from_port   = 80
  #     to_port     = 80
  #     cidr_blocks = ["0.0.0.0/0"]
  #     protocol    = "tcp"
  #     description = "Allow Web Server"

  #   }

  #   ingress {
  #     from_port   = 443
  #     to_port     = 443
  #     cidr_blocks = ["0.0.0.0/0"]
  #     protocol    = "tcp"


  #   }
  #   ingress {
  #     from_port   = 3306
  #     to_port     = 3306
  #     cidr_blocks = ["0.0.0.0/0"]
  #     protocol    = "tcp"
  #     description = "postgres sql"

  #   }

  #   ingress {
  #     from_port   = 27017
  #     to_port     = 27017
  #     cidr_blocks = ["0.0.0.0/0"]
  #     protocol    = "tcp"
  #     description = "mongo db"

  #   }

}
