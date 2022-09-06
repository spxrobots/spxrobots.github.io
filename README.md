# SPX Robotics GitLab

Installation Steps:

1. Install [Git-LFS](https://git-lfs.github.com/),
2. Clone: `git clone <repo-uri>`,
3. Step into: `cd spx-robotics.gitlab.io`,
4. Run `git lfs install` in the directory,
5. Run `git lfs checkout`
6. Any new binary blobs should be added via `git lfs track '*.ext'`

# !!! IMPORTANT PRIVACY NOTICE !!!

Use `exiftool -all= image.jpg` or similar to remove identifying EXIF data (such as GPS).

# Tasks

+ [ ] Restore old repo history
+ [ ] Migrate to using GitLFS for images/video etc (jpg, jpeg, gif, gifv, mp4, wav, mp3, png, ...)
