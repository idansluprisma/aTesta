provider "aws" {
  foo = "bar"
}

resource "aws_instance" "test" {
  provisioner "shell" {
    test_string = "foo"
  }
  tags = {
    yor_trace = "3aef1c26-8891-434d-ad27-8daa22397a46"
  }
}
