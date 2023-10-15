resource "aws_instance" "foo" {
  count = 3
  foo   = "number ${count.index}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "1bd839fb-1be7-4805-b06f-ab5cd7b32669"
  }
}
