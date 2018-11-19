# leanix-pivio-showcase

**In order to set up the Pivio integration you need a few things to start:**

Prerequisites:

* Github account
* Git CLI (https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line)
* Travis account (https://travis-ci.org/) - connect to Github
* Travis CLI (https://github.com/travis-ci/travis.rb)

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


      
  
