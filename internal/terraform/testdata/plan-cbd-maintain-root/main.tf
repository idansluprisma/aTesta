resource "aws_instance" "foo" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "e55b44ec-6fcb-47c3-af6e-9e09b8657046"
  }
}

resource "aws_instance" "bar" {
  count = "2"

  lifecycle {
    create_before_destroy = true
  }
  tags = {
    yor_trace = "5b5f90c5-8281-4e9a-ab59-34f2bb9c506a"
  }
}

output "out" {
  value = "${aws_instance.foo.0.id}"
}
