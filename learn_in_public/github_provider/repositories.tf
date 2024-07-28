resource "github_repository" "second-repository_by_terraform" {

  name        = "second-repo-using-terraform"
  description = "This repository created using github"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository" "first-repository_by_terraform" {

  name        = "first-repo-using-terraform"
  description = "This repository created using github"
  visibility  = "public"
  auto_init   = true
}
