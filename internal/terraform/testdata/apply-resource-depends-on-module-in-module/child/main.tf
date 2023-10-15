module "grandchild" {
  source = "./child"
}

resource "aws_instance" "b" {
  ami        = "child"
  depends_on = ["module.grandchild"]
  tags = {
    yor_trace = "88efd16b-0ede-4b56-8eda-676264258276"
  }
}
