resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "2363e596-3fc0-406a-a750-7c1c5131cff9"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    yor_trace = "57e06ee5-d505-4aba-a2e8-5d5879b69702"
  }
}
