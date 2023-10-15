module "child" {
  input  = "42"
  source = "./child"
}

resource "aws_instance" "bar" {
  foo = "2"
  tags = {
    yor_trace = "737374f0-6590-4e03-8b2c-ee44aad7af30"
  }
}
