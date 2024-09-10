# Git notes 

### Naming

**snapshot** - Every time you ´git commit´ to your project, you create a snapshot of all the files, history and metadata in that specific point in time

**repo** - short for reposetory

### Alternative GUI's
 - Github Desktop (Add links later)
 - Sourcetree (Add links later)
 - GitKraken (Add links later)


![Stages and directories](Assets/01-dir-and-stage.jpg)


### File stages
 - Untracked (not added to the list of files to track yet)
 - Tracked (added to the list of files)
    - Unmodified (saved but not changed)
    - Modified (changed but not staged)
    - Staged (staged and ready to push) 

### Directories
 - ./git (the local history of saved unmodified files)
 - Working directory (changes made to saved files live here)
 - Index/staging, sometimes reffered to as the cache (file changes ready to be commited to the next project snapshot lives here)


# Common git commands


### Basics
`git init` - Creates a new git repository in the current folder and start tracking changes

`git add` - move/add **modified files** into the staging area, so its ready for the next commit

`git status` - shot the status of the files in the modified and staging area

`git commit` - creates the snapshot and commits the changes to .git ready to be pushed

`git config` - sets and reads the global and local git config settings like users and reposetory

`git log` - show the history of your git commits for the current repo

`git diff` - show the diff between files in the staging area and the working directory 


### Branches
`git branch` - list, create or delete branches

`git checkout` - switch between the branches

`git merge` - merges changes from one branch to another

### Remote Repositories
`git clone` - copies an entire repo to a new local .git directory

`git remote` - create and show linked repositories

`git push` - sends the staged files to the assosiated remote repository

`git pull` - retrieves updates from remote repositories, and merges them to the local

`git fetch` - retrieves updates form remote repositories but dont merge them to your local repo

### Undoing Changes

`git revert` - Create a new commit that undo the previous commit, but keep the repo rolling forward

`git reset` - Removes files form the stating area. Destructive command 

### Help

`git <command> --help` - Show the help/manpage for the command in browser


# Set up local environment
 1. Create a folder for your repo root
 2. Navigate into that folder
 3. Type `git init` to create local repo and start tracking changes
 4. Check the name of the main branch by typing `git branch`
     - Type `git branch -m main` to set the name of the branch to "main"
 5. 


# Working with local repos



# Working with others on shared repos



