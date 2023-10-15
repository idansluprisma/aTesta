variable "things" {}

resource "aws_instance" "bar" {
  baz   = "baz"
  count = 2
  tags = {
    yor_trace = "61594c22-13a2-4408-8a0b-86664922d321"
  }
}

resource "aws_instance" "foo" {
  foo = "${join(",", aws_instance.bar.*.baz)}"
  tags = {
    yor_trace = "4dae7f60-7ced-4649-858a-c2aac878fccd"
  }
}
