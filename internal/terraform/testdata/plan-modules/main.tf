module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "9dac3407-f97e-4243-a15f-1307359c0f8c"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.num}"
  tags = {
    yor_trace = "58ba96b5-0c83-4050-9dc1-c9844903df21"
  }
}
