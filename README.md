# Auto-commit GitHub Action

The purpose of this GitHub action is to auto-commit back any changes made to the branch through previous GitHub actions to a given branch.

**Attention! This will force push to the named branch, so previous changes will be lost.**

Use the GitHub action in the following way:

```
action "Filter master" {
  uses = "actions/bin/filter@46ffca7632504e61db2d4cb16be1e80f333cb859"
  args = "branch master"
}

action "Some action that changes files" {
  uses = "..."
  args = "..."
}

action "Auto-commit" {
  uses = "Mudlet/commit-branch-action@master"
  needs = ["Some action that changes files"]
  args = "This is an auto-commit"
  secrets = ["GITHUB_TOKEN"]
  env = {
    USERNAME = "mudlet-bot"
    USEREMAIL = "info@mudlet.org"
    BRANCH_NAME = "translation-updates"
  }
}
```

This ensures that you run your action only on the master branch. The `args` field is used as your commit message. To modify the branch name, commiter name, and e-mail, adapt the `env` values accordingly.

