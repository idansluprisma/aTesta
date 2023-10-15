resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    yor_trace = "d91a7aa4-699e-4137-b91e-c4a0a7813b3f"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
