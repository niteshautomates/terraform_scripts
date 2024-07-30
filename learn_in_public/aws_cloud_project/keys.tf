resource "aws_key_pair" "aws-keypair-tf" {
  key_name   = "aws-keypair-tf"
  public_key = file("${path.module}/aws-keypair.pub")

}
