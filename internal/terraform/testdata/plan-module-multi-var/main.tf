resource "aws_instance" "parent" {
  count = 2
  tags = {
    yor_trace = "a6c6836d-b908-447f-be45-cc79fe1170dd"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

