git cheatsheet
=======

# After Install
git --version

git config --global user.name "User Name"
git config --global user.email "user@name.com"
git config --list


# to get help:
```
git help <verb>
git <verb> --help
```

# To initialize a repo from existing code
```
git init
```

# Case 1 : To stop tracking directory:
```
rm -rf .git
```

# To do before first commit :
```
git status
```

# to ignore certain files:
```
cat > .gitignore
vim .gitignore
```


# Adding files to staging area:
```
git add .gitignore hello.py
git add -A
```


# To remove files from staging area:
```
git reset hello.py  # This will unstage hello.py but will keep gitignore
```


# To remove everything:
```
git reset
```

# First commit
```
git commit -m"First commit of a really simple web app, with a .gitignore file"
```

# To see a log of commits
```
git log
```



# Case 2 : Cloning from a remote repo:
```
git clone <url-to-repo> <where-you-want-clone>
git clone ../remote_repo_git.git .

```

# To view information about the remote repo:
```
git remote -v
git branch -a  # To list all branches in the repo

````


# Pushing changes
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
# Create a branch to start working on a new feature
```
git branch new-feature
git branch
git checkout new-feature
git branch
```


# After commit push branch to remote repo
```
git push -u origin new-feature

git branch -a  # To see all branches

```



#Merge a branch
### In most casd the merge will be done on remote after code review and unit tests
```
git checkout master
git pull origin master  # Always pull master in case any changes were made while working on new feature
git branch --merged  # get a list of all branches that have been merged in so far
git merge new-feature
git push origin master
```


### After the merge has been complete, now the branch is ready to be deleted
```
git branch --merged
git branch -d new-feature
git branch -a
git push origin --delete new-feature
git branch -a  # to check if delete is successful 
```



# 


git-ftp
======

sudo apt-get install git-ftp
brew install git-ftp
# Setup
git config git-ftp.url "ftp://ftp.example.net:21/public_html"
git config git-ftp.user "ftp-user"
git config git-ftp.password "secr3t"
git config git-ftp.syncroot www


ftp.cluster021.hosting.ovh.net/www

# Upload all files
git ftp init

# Or if the files are already there
git ftp catchup

# Work and deploy
echo "new content" >> index.txt
git commit index.txt -m "Add new content"
git ftp push
