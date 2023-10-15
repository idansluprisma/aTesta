resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    yor_trace = "d49079cc-ae87-45ee-903e-0a34f34bca07"
  }
}
