resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    on_failure = "continue"
  }
  tags = {
    yor_trace = "8bc89055-8ca6-4f73-b6db-7ac73930c27f"
  }
}
