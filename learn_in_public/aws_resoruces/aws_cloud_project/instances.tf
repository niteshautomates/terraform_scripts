resource "aws_instance" "ubuntu" {
  ami                    = data.aws_ami.ubunut_ami_id.id
  instance_type          = var.instace_type
  key_name               = aws_key_pair.aws-keypair-tf.key_name
  vpc_security_group_ids = [aws_security_group.security-group-tf.id]
  tags = {
    Name = "First-instance-by-terraform"

  }

  # user_data = <<-EOF
  # #!/bin/bash
  # sudo apt-get update -y
  # sudo apt-get install nginx -y
  # sudo echo "Hi, Nitesh Wayafalkar" > /var/www/html/index.nginx-debian.html
  # EOF

  user_data = file("${path.module}/userData.sh")
  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("${path.module}/aws-keypair")
  }
  provisioner "file" {
    source      = "userData.sh"
    destination = "/tmp/userData.sh"
  }


  provisioner "file" {
    source      = "remote-file-create.sh"
    destination = "/tmp/remote-file-create.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/remote-file-create.sh",
      "/tmp/remote-file-create.sh args",
    ]
  }
  # //for content
  # provisioner "file" {
  #   source      = "Copying this content to remote file"
  #   destination = "/tmp/content.readme"
  # }

  # provisioner "file" {
  #   source      = "${path.module}/../aws_cloud_project"
  #   destination = "/tmp/"
  # }
}
