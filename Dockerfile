FROM alpine/git:1.0.7

LABEL "name"="commit-branch"
LABEL "maintainer"="Florian Scheel <keneanung@googlemail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Auto-commit with branch for GitHub Actions"
LABEL "com.github.actions.description"="Auto-commits and changes back to a configured branch"
LABEL "com.github.actions.icon"="git"
LABEL "com.github.actions.color"="orange"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
