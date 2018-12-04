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
Paste it according to https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/


2. Create a Travis CI account with your Github account (https://travis-ci.org/signin)
3. Install brew from https://brew.sh
4. Install Git CLI 
```
brew install git
```
5. Install Travis CLI 
```
sudo gem install travis -v 1.8.9 --no-rdoc --no-ri
```

6. Login to Travis with your Github credentials
```
travis login -u <github user>
```

7. Clone this project and setup your individual sample projects
```
git clone git@github.com:leanix-public/leanix-pivio-showcase.git
cd leanix-pivio-showcase
./0_checkout.sh
./1_create_github_repos.sh <github user>
./2_push_to_new_repos <github user>
```

Steps to execute within a demo:
1. Create an API token for your LeanIX workspace and add it to Travis
```
./3_set_token.sh <token>
```
2. Emulate a change in all teams
```
./4_change_all.sh <some nice comment>
```
3. Commit and push the changes to start your CI/CD pipeline
```
./6_commit_and_push.sh <some nice commit message
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


      
  
