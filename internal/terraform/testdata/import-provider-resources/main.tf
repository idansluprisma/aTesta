provider "aws" {
  value = "${test_instance.bar.value}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    yor_trace = "c1345404-2be9-4c7e-9571-266542389fec"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
