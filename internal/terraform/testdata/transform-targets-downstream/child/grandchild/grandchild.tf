resource "aws_instance" "foo" {
  tags = {
    yor_trace = "6512609e-1f72-4541-a550-8f00f9ed91c4"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
