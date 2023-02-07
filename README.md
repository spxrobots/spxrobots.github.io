# SPX Robotics GitLab

* GitLab
    * Code storage
    * Website hosting
* Google Drive
    * Image storage
* Clouflare (currently with Oli - need to transfer)
    * Domain for spxrobots.org

# !!! IMPORTANT PRIVACY NOTICE !!!

Use `exiftool -all= image.jpg` or similar to remove identifying EXIF data (such as GPS) prior to Google Drive upload.

## Developing Locally

### Dependencies

* `bash` : <https://git-scm.com/downloads>
* `zola` : <https://github.com/getzola/zola/releases>
* `htmlq` : <https://github.com/mgdm/htmlq/releases>

### Testing

Ensure you're current directory is the base of the repository before building or fetching images (`ls` command should show `README.md`).

```sh
./serve.bash
```

## Patches

* Make your changes in Git.
* Squash (via rebase) into a single commit.
* Run `git format-patch origin/main -o ~/Desktop`
* Submit patch file to staff.
* Patches will be anonymised to `Student <>`
* Patches applied via `git am 0000-foo-bar.patch`

## Note on Images Etc.

All binary blobs - images, video, compiled programs, etc; should be placed into the Google Drive folder.

# Tasks

+ [x] Restore old repo history
+ [ ] Transfer DNS to School Account
