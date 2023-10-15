resource "aws_instance" "foo" {
  num = "2"
  provisioner "shell" {}
  tags = {
    yor_trace = "51d939c4-7c76-4325-9b92-0c828eb5c2be"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    yor_trace = "95626af2-3747-45ec-a2cc-6f8876beef2d"
  }
}
