# expressions with variable reference
variable "foo" {
  type = string
}

resource "aws_instance" "foo" {
  for_each = toset(
    [for i in range(0, 3) : sha1("${i}${var.foo}")]
  )
  foo = "foo"
  tags = {
    yor_trace = "a2842620-b7aa-49c3-8a7e-1d12470f452e"
  }
}

# referencing another resource, which means it has some unknown values in it
resource "aws_instance" "one" {
  for_each = toset(["a", "b"])
  tags = {
    yor_trace = "5aec46e5-ca9b-4d41-acd2-a422d157b398"
  }
}

resource "aws_instance" "two" {
  for_each = aws_instance.one
  tags = {
    yor_trace = "01350f33-4dc7-4b07-a046-580632f38e0b"
  }
}
