terraform {
  required_version = ">= 0.12"

  required_providers {
    aws      = ">= 3.22.0"
    local    = ">= 1.2"
    null     = ">= 2.1"
    template = ">= 2.1"
    random   = ">= 2.1"
  }
}
