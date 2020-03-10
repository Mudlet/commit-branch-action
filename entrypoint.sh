#!/bin/sh
set -e

sh -c "git config --global user.name '${USERNAME}' \
      && git config --global user.email '${USEREMAIL}' \
      && git checkout -b ${BRANCH_NAME} \
      && git add -A && git commit -m \"$*\" --allow-empty \
      && git push --force -u origin ${BRANCH_NAME}"
