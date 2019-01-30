# leanix-pivio-showcase

**In order to set up the Pivio integration you need a few things to start:**

Prerequisites:

1. Create a Github account and add an SSH key 
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
```

2. Paste your SSH key according to https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/


3. Create a Travis CI account with your Github account (https://travis-ci.org/signin)
4. Install brew from https://brew.sh
5. Install Git CLI 
```
brew install git
```
6. Install Travis CLI 
```
sudo gem install travis -v 1.8.9 --no-rdoc --no-ri
```

7. Login to Travis with your Github credentials
```
travis login -u <github user> --org
```

8. Clone this project and setup your individual sample projects
```
git clone git@github.com:leanix-public/leanix-pivio-showcase.git
cd leanix-pivio-showcase
./01_initial_checkout.sh
./02_create_github_repos.sh <github user> TODO: give password as argument
./03_push_to_new_repo.sh <github user>
./1_clean_and_checkout.sh <github user>
```

9. Sync your repositories between Travis and Github: Goto https://travis-ci.org/account/repositories, hit "Sync Account", Activate all your repos

Steps to execute within a demo:
1. Create an API token for your LeanIX workspace and add it to Travis
```
./3_set_token.sh <github user> <token>
```
2. Emulate a change in all teams
```
./4_change_all.sh <some nice comment>
```
3. Commit and push the changes to start your CI/CD pipeline
```
./6_commit_and_push.sh <github account> <some nice commit message>
```


# Overview on the provided scripts
The shell scripts provided allow you to set up and execute the showcases:
- 0_checkout.sh - Fetches the sample projects from the source repo
- 1_create_github_repos.sh - Creates new projects within the provided github account
- 2_push_to_new_repos.sh - Pushes the sample projects to the provided github account
- 3_set_token.sh - Uses Travis CLI to initialize the Travis CI Server with the LeanIX API Token
- 4_change_all.sh - Creates a change (updated Readme.MD) in all of the sample projects
- 5_status.sh - Execute 'git status' for all of the sample projects
- 6_commit_and_push.sh - Commits and pushes the local changes. This triggers the Travis jobs if everything is setup correctly and pushes the sample data into your LeanIX workspace
- 7_webhook.js - Contains the sample callback to setup a PUSH webhook to Slack
- 9_reset.sh - Hard reset on all local changes


      
  
