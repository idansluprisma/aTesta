resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command = "two"
    when    = "destroy"
  }
  tags = {
    yor_trace = "5cdeef3a-de0e-4d7b-b2fd-af066f6c570b"
  }
}
