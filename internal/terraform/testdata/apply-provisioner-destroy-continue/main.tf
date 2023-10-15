resource "aws_instance" "foo" {
  foo = "bar"

  provisioner "shell" {
    command    = "one"
    when       = "destroy"
    on_failure = "continue"
  }

  provisioner "shell" {
    command    = "two"
    when       = "destroy"
    on_failure = "continue"
  }
  tags = {
    yor_trace = "07ada028-7628-4866-984a-4cbd942b1fff"
  }
}
