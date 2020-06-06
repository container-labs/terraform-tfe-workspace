resource "tfe_workspace" "cl-workspace" {
  name              = var.name
  organization      = var.organization
  terraform_version = var.terraform_version
  auto_apply        = var.auto_apply
  ssh_key_id        = var.ssh_key_id

  vcs_repo {
    identifier     = var.vcs_repo_identifier
    branch         = var.vcs_repo_branch
    oauth_token_id = var.oauth_token_id
  }

  working_directory = var.working_directory
}

resource "tfe_team_access" "main" {
  for_each = toset(var.teams_write_access)
  access       = "write"
  team_id      = each.key
  workspace_id = tfe_workspace.cl-workspace.id
}
