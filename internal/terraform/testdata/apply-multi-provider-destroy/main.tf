resource "vault_instance" "foo" {}

provider "aws" {
  addr = "${vault_instance.foo.id}"
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "3e44cca5-96e3-4974-84e2-34f89e717b4c"
  }
}
