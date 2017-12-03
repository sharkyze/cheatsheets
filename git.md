git cheatsheet
=======

## After Install
```
git --version

git config --global user.name "User Name"
git config --global user.email "user@name.com"
git config --list
```

## To get help:
```
git help <verb>
git <verb> --help
```

## To initialize a repo from existing code
```
git init
```

## Case 1 : To stop tracking directory:
```
rm -rf .git
```

## To do before first commit :
```
git status
```

## to ignore certain files:
```
cat > .gitignore
vim .gitignore
```


## Adding files to staging area:
```
git add .gitignore hello.py
git add -A
```


## To remove files from staging area:
```
git reset hello.py  # This will unstage hello.py but will keep gitignore
git reset HEAD <filename>
```


## To remove everything:
```
git reset
```

## First commit
```
git commit -m"First commit of a really simple web app, with a .gitignore file"
```

## To see a log of commits
```
git log
```



## Case 2 : Cloning from a remote repo:
```
git clone <url-to-repo> <where-you-want-clone>
git clone ../remote_repo_git.git .

```

## To view information about the remote repo:
```
git remote -v
git branch -a  # To list all branches in the repo

````

## Add a remote repo:
```
git remote add <github repo "origin"> https://github.com/user/repo
````




## Pushing changes
```
git diff
git status
git add -A
git commit -m "desciption of changes"
git pull origin master  # Really important, to get all changes other devs have made to the project
git push origin master

```



git remote set-url origin https://github.com/sharkyze/repo.git
git push origin master
git remote -v


Common git workflow
======
## Create a branch to start working on a new feature
```
git branch new-feature
git branch
git checkout new-feature
git branch
```


## After commit push branch to remote repo
```
git push -u origin new-feature

git branch -a  # To see all branches

```



##Merge a branch
#### In most casd the merge will be done on remote after code review and unit tests
```
git checkout master
git pull origin master  # Always pull master in case any changes were made while working on new feature
git branch --merged  # get a list of all branches that have been merged in so far
git merge new-feature
git push origin master
```


#### After the merge has been complete, now the branch is ready to be deleted
```
git branch --merged
git branch -d new-feature
git branch -a
git push origin --delete new-feature
git branch -a  # to check if delete is successful 
```


 
Fixing mistakes
========
## Correcting commit message
```
git commit --amend -m "new message to replace the old one"
git log
```

Git amend Will change the hash and the git history (not a bad thing if only person working on the project)


## If a commit has been already made but you want to add a new file to the commit
#### for example a gitignire file
```
touch gitignore
git status
git add.gitignore
git commit --amend  #This will open an interactive window to edit the commit / You can save and close out of this window by :wq
git log
git log --stat  # the gitignore file has been added to the previous commit with a new hash
```


## If a commit was made to a bad branch
```
git log  # grab the first six digits of the hash
git checkout correct-branch  # checkout the correct branch were changes were supposed to be made
git log
git cherry-pick ###### # the six digits hash copied earlier
git log  # now commit is on the correct branch
git checkout master  # to earase the commit from the master brancb
git log
git reset --soft ####  # hash of the commit
git status  # soft resets uncommit files commited during last commit but puts them back again in the staging area
git reset ####
git status  # a files are taken out of the commit and the staging area but the changes are kept to files
git reset --hard #####
git status  # will get rid of the changes made to files on disk for all files except for untracked files
git clean -df  # get rid of untracked files
git status
```


## If a git reset hard was made to files that we finally decided to keep
```
git reflog  # grab the hash of the reset
git checkout ######
git log   # changes are back but we are no longer on a branch to keep changes a branch needs to be created
git branch backup  # to create branch from the detachted state (not on a branch, will be trashed in the future)
git branch  # We should be on a detached branch
git checkout master
git branch
git checkout backup
```


## If you want to undo commits already pulled by other users:
##### Not to change history
```
git log  # copy the hash of the commit to revert
git revert  ######
```
# modify the edit window, exit and save :wq
git log
git diff #### ####  # the two commit made (false and reverted)


## Make a file from the repository the working copy
```
git checkout -- <filename>

```

## Checkout a file from a previous commit
```
git checkout <commit hash> -- <filename>
git commit -am "undo file change"
````



git-ftp
======

sudo apt-get install git-ftp
brew install git-ftp
## Setup
git config git-ftp.url "ftp://ftp.example.net:21/public_html"
git config git-ftp.user "ftp-user"
git config git-ftp.password "secr3t"
git config git-ftp.syncroot www


ftp.cluster021.hosting.ovh.net/www

## Upload all files
git ftp init

## Or if the files are already there
git ftp catchup

## Work and deploy
echo "new content" >> index.txt
git commit index.txt -m "Add new content"
git ftp push
````



Everyday git in twenty commands:
````
git help everyday
````

