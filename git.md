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



#git-ftp


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
