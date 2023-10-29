# maps
resource "aws_instance" "foo" {
  for_each = {
    a = "thing"
    b = "another thing"
    c = "yet another thing"
  }
  num = "3"
  tags = {
    git_org = "idansluprisma"
  }
}

# sets
resource "aws_instance" "bar" {
  for_each = toset([])
  tags = {
    git_org = "idansluprisma"
  }
}
resource "aws_instance" "bar2" {
  for_each = toset(["z", "y", "x"])
  tags = {
    git_org = "idansluprisma"
  }
}

# an empty map should generate no resource
resource "aws_instance" "baz" {
  for_each = {}
  tags = {
    git_org = "idansluprisma"
  }
}

# references
resource "aws_instance" "boo" {
  foo = aws_instance.foo["a"].num
  tags = {
    git_org = "idansluprisma"
  }
}

resource "aws_instance" "bat" {
  for_each = {
    my_key = aws_instance.boo.foo
  }
  foo = each.value
  tags = {
    git_org = "idansluprisma"
  }
}

