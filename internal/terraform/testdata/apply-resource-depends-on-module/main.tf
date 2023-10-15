module "child" {
  source = "./child"
}

resource "aws_instance" "a" {
  ami = "parent"

  depends_on = ["module.child"]
  tags = {
    yor_trace = "dd708b59-5689-4505-901e-09c8129f5650"
  }
}
