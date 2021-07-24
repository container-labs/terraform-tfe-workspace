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
  default = ""
}
variable "vcs_repo_branch" {
  default = "main"
}
variable "working_directory" {
}
variable "ssh_key_id" {
  default = ""
}
variable "organization" {
  default = "container-labs"
}

variable "terraform_version" {
  default = "~> 1.0.3"
}
