resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    yor_trace = "aebc41f2-524c-4aec-82ac-5ba13dd63e17"
  }
}
