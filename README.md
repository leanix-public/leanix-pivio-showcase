# leanix-pivio-showcase

**In order to set up the Pivio integration you need a few things to start:**

Prerequisites -

* Java 8 (http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
* Docker (https://www.docker.com/products/docker-desktop)
* Kitematic (https://kitematic.com/)
* Package manager (npm, homebrew)
* Github account
* Git CLI (https://git-scm.com/book/en/v2/Getting-Started-The-Command-Line)
* Travis account (https://travis-ci.org/) In order to connect to Github ===> 
* Travis CLI (https://github.com/travis-ci/travis.rb)

- It also would not be a bad idea to create the repositories, on your own github account, which are mentioned in the following   shell script: https://github.com/leanix-public/leanix-pivio-showcase/blob/master/0_checkout.sh. This can also be adapted       if you would like to use different projects; simply fork the repository and change the projects mentioned in the array. This   is the array I am referring to in that shell script =====> projects="service-cart service-dataloader service-navigation       service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

- In my experience there was permission issues regarding the 1_checkout.sh script. Therefore, I cloned the project               repositories (referenced above) manually by using the git clone command. (Must have git installed and a repository to clone)   In this case I just cloned the repositories I had forked from Dominik's.

  - Also, before running the 4_commit_and_push.sh script, make sure that you have installed the pivio client image on Docker.     The easiest way to do this is to install Kitematic. Kitematic offers a GUI for docker and a simple way to install new         docker images (think of them like templates for containers). See here for more details: https://kitematic.com/
  
- Next once those steps are completed you can execute the integration between Pivio and LeanIX
    - First set your API token of the workspace that you will be adding/updating factsheets in. This will be performed by           using 0_set_token.sh shell script. From the command line the command will appear like this: ./0_set_token.sh <TOKEN>. If       you receive an error from this you may need to make the script executable. In that case you will need to use the               following command chmod -x 0_set_token.sh.
    - Next in order to simulate changes in a microservice we need to make sure we have a repository for each project mentioned       in the checkout shell script. We can execute the checkout shell script in a similar fashion to the set token script. The       command would appear as follows in your command line: ./1_checkout.sh
      - Once we have the repositories created we then need to make sure that our git account holds these repositories as well.         Therefore, we can just use git push (https://git-scm.com/docs/git-push) to add them to our own account.
    - Now that we have our repositories set up we can next make some changes within them using the 3_change_all.sh script.           This script just appends a change to the Readme file in each repository. The command would like something like this           ./2_change_all.sh <WHATEVER YOU WOULD LIKE HERE>.
    - At this point we have some changes that we can commit in our repositories, which we use the 4_commit_and_push.sh script       for. The command would look something like the following: ./4_commit_and_push.sh <YOUR COMMIT MESSAGE HERE>
       - After that the changes will trigger our travis jobs to run and ultimately pass the information from our travis builds         in to LeanIX via the Pivio.yaml file.
      
  
