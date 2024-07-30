output "host_id" {
  value = aws_instance.ubuntu.id

}

output "subnet_id" {
  value = aws_instance.ubuntu.subnet_id
}

output "public_ip" {
  value = aws_instance.ubuntu.public_ip
}

output "tags" {
  value = aws_instance.ubuntu.tags
}

output "security_group_ingress" {
  value = aws_security_group.security-group-tf.id
}
output "aws_ami_id" {
  value = data.aws_ami.ubunut_ami_id.id
}

output "aws_ami_name" {
  value = data.aws_ami.ubunut_ami_id.name
}