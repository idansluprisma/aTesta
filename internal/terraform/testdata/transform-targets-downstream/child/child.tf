resource "aws_instance" "foo" {
  tags = {
    yor_trace = "8ddb6c49-f600-4129-b371-b75ee7c0173b"
  }
}

module "grandchild" {
  source = "./grandchild"
}

output "id" {
  value = "${aws_instance.foo.id}"
}

output "grandchild_id" {
  value = "${module.grandchild.id}"
}
