variable "num" {
  default = 3
}

resource "aws_instance" "a" {
  count = var.num
  tags = {
    yor_trace = "30631ce1-ef9c-430f-a7dd-a3dc06ea2beb"
  }
}

resource "aws_instance" "b" {
  provisioner "local-exec" {
    # Since we're in a provisioner block here, this expression is
    # resolved during the apply walk and so the resource count must
    # be known during that walk, even though apply walk doesn't
    # do DynamicExpand.
    command = "echo ${length(aws_instance.a)}"
  }
  tags = {
    yor_trace = "536977e3-44f5-41ab-bc1c-26cd89d588e3"
  }
}
