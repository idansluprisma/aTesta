resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "c07c99e2-eb6b-4a47-a53b-bf2106207c86"
  }
}

module "child" {
  source = "./child"

  var = "${aws_instance.foo.foo}"
}
