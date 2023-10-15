resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    yor_trace = "a3a58b0f-7cdb-40df-b6f5-305786f93d5e"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
