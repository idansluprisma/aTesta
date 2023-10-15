resource "aws_instance" "foo" {
  for_each = toset(["a", "b", "c"])
  foo      = "number ${each.value}"

  provisioner "shell" {
    command = "${self.foo}"
  }
  tags = {
    yor_trace = "574c057b-62c6-4a1a-8a59-c03d84df427e"
  }
}
