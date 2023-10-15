resource "aws_instance" "foo" {
  num = "2"
  tags = {
    yor_trace = "4d1cefc0-1ab5-4c1b-be27-42e436d0270b"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    yor_trace = "22c1b855-6e84-4dc9-a4ca-f87e17baa1c3"
  }
}

output "foo_num" {
  value = "${aws_instance.foo.num}"
}
