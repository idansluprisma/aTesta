module "child" {
  source = "./child"
  value  = "${join(" ", aws_instance.test.*.id)}"
}

resource "aws_instance" "test" {
  value = "yes"
  tags = {
    yor_trace = "33a1a5b4-8cb1-4040-87a0-770d767d855f"
  }
}
