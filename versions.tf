terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.42.0"
    }
  }
  # due to use of sensitive output attibute on output var
  required_version = ">= 1.0"
}
