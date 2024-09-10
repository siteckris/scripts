# Git notes 

### Naming

**snapshot** - Every time you ´git commit´ to your project, you create a snapshot of all the files, history and metadata in that specific point in time

**repo** - short for reposetory

### Git Configuration levels
 - **system** (OS specific) - all users on a system
     - Can be used when in corporate invironment or if many users log on the same computer
 - **global** (User specific) - setting will work for all repos for the current user
     - Can be usefull for ID and name
 - **local** (Repo specific) - settings only used for the current repo
     - Local overwrites global and system level


### Needed config
Git configuration needs both the email and username veriable set, and you set them by typing

```
git config --global user.name "YourUsername"
git config --global user.email "yourmail@dom.lcl"
```

To see the current configured values type
- `git config user.name`  - to se the username
- `git config user.email` - to se the email
- `git config --list` - to see all variables
- `git config --global --list` - to see all **global** variables

Removing settings can be done by adding **--unset** to the command syntax
 - Like `git config --global --unset user.name` will remove the username settings under the **Global config**

### Alternative GUI's
 - Github Desktop (Add links later)
 - Sourcetree (Add links later)
 - GitKraken (Add links later)


![Stages and directories](Assets/01-dir-and-stage.jpg)


### File stages
 - Untracked (not added to the list of files to track yet)
 - Tracked (added to the list of files)
    - Unmodified (saved and unchanged)
    - Modified (changed but not staged or added)
    - Staged (staged and ready to committed) 

### Directories
 - ./git (the local history of saved unmodified files)
 - Working directory (changes made to saved files live here)
 - Index/staging, sometimes reffered to as the cache (file changes ready to be commited to the next project snapshot lives here)


# Common git commands


### Basics

 - `git init` - Creates a new git repository in the current folder and start tracking changes

 - `git add` - move/add **modified files** into the staging area, so its ready for the next commit
     - `git add <filename>` - add specific file
     - `git add <foldername>/` - add folder including files
     - `git add .` - add all unsubmitted files
 
 - `git status` - shot the status of the files in the modified and staging area

 - `git commit` - creates the snapshot and commits the changes to .git ready to be pushed
     - `git commit -m "message"` - commit the file to snapshot with message

- `git config` - sets and reads the global and local git config settings like users and reposetory

- `git log` - show the history of your git commits for the current repo
    - `git log --oneline` - show the history, with only the most important data
    - `git log --oneline --graph` show the same as above, but show merges and forks

- `git diff` - show the diff between files in the staging area and the working directory 
    - `git diff --staged` - show the difference between whats in the staged content and the committed 
    - `git diff --head` - show the difference on the files both on working and staging


### Branches
- `git branch` - list, create or delete branches
    - `git branch feature` - create new branch called *feature*
    - `git branch -a` - list branches in your project
    - `git branch -d feature` - deletes the branch called *feature*

- `git checkout` - switch between the branches
    - `git checkout feature` - switch to branch called *feature*
    - `git checkout -b feature` - creates and switches to the branch called *feature*

- `git merge` - merges changes from one branch to another
    - Make sure you are in the branch you want to merge the changes into, because you merge other feature branches into the branch you are in. **Suck them in!**
    - `git merge feature -m "Merge feature banch onto main"` - Merges the branch named *feature* into the *main* branch
    - **ort** is the default merge strategy for newer versions, and is a 3-way merge

### Remote Repositories
- `git clone` - copies an entire repo to a new local .git directory

- `git remote` - create and show linked repositories

- `git push` - sends the staged files to the assosiated remote repository

- `git pull` - retrieves updates from remote repositories, and merges them to the local

- `git fetch` - retrieves updates form remote repositories but dont merge them to your local repo

### Undoing Changes

- `git revert` - Create a new commit that undo the previous commit, but keep the repo rolling forward

- `git reset` - Removes files form the stating area. Destructive command 

### Help

- `git <command> --help` - Show the help/manpage for the command in browser


# Set up local environment
 1. Create a folder for your repo root
 2. Navigate into that folder
 3. Type `git init` to create local repo and start tracking changes
 4. Check the name of the main branch by typing `git branch`
     - Type `git branch -m main` to set the name of the branch to "main"
 5. 


# Working with local repos



# Working with others on shared repos



