resource "aws_instance" "shared" {
  tags = {
    yor_trace = "07fd0328-34d9-4ad3-9238-bae4f8838c5f"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
