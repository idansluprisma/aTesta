module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    yor_trace = "5a94278a-3d33-4415-8cf6-9ff98759fae0"
  }
}
