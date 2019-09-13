workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Azure"]
}

action "GitHub Action for Google Cloud" {
  uses = "actions/gcloud/cli@6a43f01e0e930f639b90eec0670e88ba3ec4aba3"
  secrets = ["GITHUB_TOKEN"]
}

action "GitHub Action for Azure" {
  uses = "Azure/github-actions/cli@a7296f7e31b5b53632c9027e2573f5c8cb66e35c"
  needs = ["GitHub Action for Google Cloud"]
}

workflow "New workflow 1" {
  on = "push"
}
