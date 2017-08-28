# Git commands

### Git keep asking the password everytime you pull

When git is constantly asking you to type your password, make sure [to do this](https://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase).

Here the details:

`eval $(ssh-agent)` <- start the ssh agent.

`ssh-add` <- you add your private key to it. Follow the steps here.

`ssh-add -K` <- Save key permanently.


### Add a remote repository

``git remote add upstream [git@github.com:[user]/[repo].git``

``git remote add [user] git@github.com:[user]/repo.git``
