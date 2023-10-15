module "child" {
  input  = "${aws_instance.bar.foo}"
  source = "./child"
}

resource "aws_instance" "bar" {
  compute = "foo"
  tags = {
    yor_trace = "56d965e2-09d1-4264-9721-ce5691c01fd6"
  }
}
