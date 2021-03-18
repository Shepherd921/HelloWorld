workflow "on pull request merge, delete the breanch" {
on = "pull_request"
resolves = ["branch cleanup"]
}

action "branch cleanup" {
uses = "jessfranz/branch-cleanup-action@master"
secrets = ["GITHUB_TOKEN"]
}
