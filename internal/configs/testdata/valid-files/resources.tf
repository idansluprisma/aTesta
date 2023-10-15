resource "aws_security_group" "firewall" {
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes = [
      description,
    ]
  }

  connection {
    host = "127.0.0.1"
  }

  provisioner "local-exec" {
    command = "echo hello"

    connection {
      host = "10.1.2.1"
    }
  }

  provisioner "local-exec" {
    command = "echo hello"
  }
  tags = {
    yor_trace = "35de1de5-efac-44ed-885a-c92e71955605"
  }
}

resource "aws_instance" "web" {
  ami = "ami-1234"
  security_groups = [
    "foo",
    "bar",
  ]

  network_interface {
    device_index = 0
    description  = "Main network interface"
  }

  depends_on = [
    aws_security_group.firewall,
  ]
  tags = {
    yor_trace = "63d344d7-e2f7-4cf5-a30f-ed77bbbd9b96"
  }
}
