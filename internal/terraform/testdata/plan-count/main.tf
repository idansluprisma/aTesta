resource "aws_instance" "foo" {
  count = 5
  foo   = "foo"
  tags = {
    yor_trace = "c9cb3437-0c85-44ae-a30d-03ccf8165647"
  }
}

resource "aws_instance" "bar" {
  foo = "${join(",", aws_instance.foo.*.foo)}"
  tags = {
    yor_trace = "2faeb8ba-730d-4f40-89a4-6c5db26044aa"
  }
}
