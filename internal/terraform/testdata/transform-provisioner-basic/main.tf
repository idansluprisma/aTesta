resource "aws_instance" "web" {
  provisioner "shell" {}
  tags = {
    yor_trace = "6211c45c-62fa-4710-8d30-a14797aeadda"
  }
}
