module "child" {
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "${module.child.num}"
  tags = {
    yor_trace = "297ee195-2adb-4c24-934a-707badbce770"
  }
}
