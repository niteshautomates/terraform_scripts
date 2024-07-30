output "key-content" {
  value = file("${path.module}/aws-keypair.pub")
}