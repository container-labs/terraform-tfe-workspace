variable "name" {

}

variable "auto_apply" {
  default = false
}


variable "teams_write_access" {
  default = []
}


variable "vcs_repo_identifier" {
  default = "container-labs/infrastructure"
}

variable "oauth_token_id" {

}


# TODO: with a monorepo, might not use branching
variable "vcs_repo_branch" {
  default = "master"
}

variable "working_directory" {

}

variable "ssh_key_id" {

}


