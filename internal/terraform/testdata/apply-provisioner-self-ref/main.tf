resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "3bb7d8c9-791c-4765-96e1-0c619f4bae55"
  }
}
