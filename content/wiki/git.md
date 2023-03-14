+++
title = "Git"
+++

Git is a tool used to keep a log book journal for your code. It does this by keeping entries that track changes in your code, known as *'commits'*, inside a sort of database known as a *'repository'*. Alongside each commit is a short description known as a *'commit message'*, and extra metadata such as the date, time and author. These commits are made inside *'branches'*, which can fork off from the *'main'* (or *'master'*) branch to test new features in a separate timeline.

You can use Git from the command-line, or a GUI such as GitHub Desktop. For submitting *'patches'* (changes you've made in a non-main branch that you wish to see accepted into another repository) on a Git hosting provider like GitHub or GitLab you would create a *'pull-request'* or *'merge-request'* from the branch you have made changes within. However, the more traditional approach that we use for spxrobots (which is also used by SourceHut) is to submit patches file via email.

## Common Usage

### Create a New Repository

```sh
# Make the current folder a new repository
git init

# Specify the folder to put a new repository into
git init robocup-teamname-2023
```

### Clone an Existing Repository

```sh
git clone "https://gitlab.com/spxrobots/spxrobots.gitlab.io"
```

### Make a New Commit

```sh
git add fileChanged1.c fileChanged2.txt

git commit -m "fixed power output range"
```

### Make a New Branch

```sh
git branch powerfix
```

### Change to a Specific Branch

```sh
git switch powerfix
```

## Submitting a Patch for `spxrobots.org`

```sh
# Make and use a new branch based on current main to create changes
git switch --create ev3wikiedit main

# Make commit(s) for changes ...
git add content/wiki/ev3.md
git commit -m "fix: ev3 wiki intro"

# When you're ready to submit a patch,
# create a new patch branch based on main before our work
git switch --create patch main

# Apply our changes
git merge --squash ev3wikiedit

# Write a summary commit message of the work done
git commit -m "fix: ev3 wiki intro"

# Create the patch file
git format-patch main -o ~/Desktop

# Now submit the patch file to the git user of the spxrobots email address.

# Go back to the main branch, and delete the patch branch we used to make the PATCH file
git switch main
git branch --delete patch
```

## Best Practices

When submitting code for `spxrobots.org`, run the following command in the repository at init:

```sh
git config user.name "Student"
git config user.email ""
```

## Installing Git

* [Git for Windows / GitBash Downloads Page](https://git-scm.com/downloads)
* Make sure the following settings are configured during installation:
  * Select either Nano (command line), VSCode, Notepad or Notepad++ as the Default Editor
  * Override branch name to `main`
  * Git from command line and 3rd party software
  * Use bundled OpenSSH
