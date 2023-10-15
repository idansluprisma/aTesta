resource "aws_instance" "foo" {
  tags = {
    yor_trace = "298810fa-fbbe-438d-befb-43b30acbce5e"
  }
}

output "instance_id" {
  # Even though we're targeting just the resource above, this should still
  # be populated because outputs are implicitly targeted when their
  # dependencies are
  value = "${aws_instance.foo.id}"
}
