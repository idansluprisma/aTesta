variable "instance_count" {}

resource "aws_instance" "foo" {
  count = var.instance_count
  foo   = "foo"
  tags = {
    yor_trace = "47cc7837-a590-427f-9136-0c94f46b8caa"
  }
}

resource "aws_instance" "bar" {
  foo = join(",", aws_instance.foo.*.foo)
  tags = {
    yor_trace = "9ec5bee4-5197-4c4b-a306-d43995f92a16"
  }
}
