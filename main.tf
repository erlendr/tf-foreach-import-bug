terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

locals {
  ids = ["id1"]
}

resource "random_id" "test" {
  for_each    = toset(local.ids)
  byte_length = 4
}
