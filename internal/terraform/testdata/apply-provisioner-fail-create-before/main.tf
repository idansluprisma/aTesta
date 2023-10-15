resource "aws_instance" "bar" {
  require_new = "xyz"
  provisioner "shell" {}
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "1bfd27e4-af72-4e93-9aac-62c69ad0adfd"
  }
}
