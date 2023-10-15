locals {
  one = 1
}

resource "aws_instance" "a" {
  count = "${local.one}"
  tags = {
    yor_trace = "72d9679c-21cc-4d73-be88-c111a89c23d6"
  }
}

resource "aws_instance" "b" {
  count = "${local.one}"
  tags = {
    yor_trace = "b99b2390-8b47-444a-b825-96a119cc05a8"
  }
}

output "output" {
  value = "${join("", coalescelist(aws_instance.a.*.id, aws_instance.b.*.id))}"
}
