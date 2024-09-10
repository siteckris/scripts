# Git notes 


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

### Help

`git <command> --help` - Show the help/manpage for the command in browser

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