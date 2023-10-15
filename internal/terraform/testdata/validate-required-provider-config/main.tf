# This test verifies that the provider local name, local config and fqn map
# together properly when the local name does not match the type.

terraform {
  required_providers {
    arbitrary = {
      source = "hashicorp/aws"
    }
  }
}

# hashicorp/test has required provider config attributes. This "arbitrary"
# provider configuration block should map to hashicorp/test.
provider "arbitrary" {
  required_attribute = "bloop"
}

resource "aws_instance" "test" {
  provider = "arbitrary"
  tags = {
    yor_trace = "ee9e0f9a-ea2a-430e-8bac-bcceb5d460bd"
  }
}
