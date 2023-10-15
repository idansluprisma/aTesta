resource "aws_instance" "foo" {
  num     = "2"
  compute = "list.#"
  tags = {
    yor_trace = "6b4c70ce-6559-4469-a44c-6b9671bd79ff"
  }
}

resource "aws_instance" "bar" {
  foo = aws_instance.foo.list.0
  tags = {
    yor_trace = "a84a928e-7eb6-4aa9-9dc2-f926b2b01b6a"
  }
}
