resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "737a77a7-6f12-4834-9bb0-1ebf6882e956"
  }
}

resource "aws_instance" "bar" {
  foo   = "bar"
  count = 3
  tags = {
    yor_trace = "e5c1af69-579a-4464-bdd6-a761ebd93ffa"
  }
}

output "foo_num" {
  value = "${join(",", aws_instance.bar.*.foo)}"
}
