+++
title = "Blog"
+++

The SPXRobots blog is where teams demonstrate their weekly progress by submitting short write-ups of the work they have done or skills they have learnt.

## Writing a Blog Entry

## First Setup

1. [Install and setup Git](@/wiki/git.md)
2. Clone the spxrobots.org Repository
3. Ensure author details are correct
  * Inside the spxrobots repo:
  * (set student id as user name `git config user.name "stdt00"`
  * `git config user.email ""`
  * Patches will not be accepted if not correct
4. `git branch blog`

## Each Week

### Easy Difficulty

```
git checkout main
git pull
git checkout blogt0w0
# Write entire blog entry
git add .
git commit -m "blog: group-name t2w4"
git format-patch -o ~/Desktop main
```

### Medium Difficulty - more tidy

```
git checkout main
git pull
git checkout blog
git reset --hard origin/main
# Write Blog Entry
git checkout main
git merge --squash blog
git commit -m "blog: group-name t2w4"
```
