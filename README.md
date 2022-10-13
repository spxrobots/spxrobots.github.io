# SPX Robotics GitLab

* GitLab
    * Code storage
    * Website hosting
* Google Drive
    * Image storage
* DuckDNS.org
    * DNS (A, TXT) for spxrobots.duckdns.org

# !!! IMPORTANT PRIVACY NOTICE !!!

Use `exiftool -all= image.jpg` or similar to remove identifying EXIF data (such as GPS) prior to Google Drive upload.

## Developing Locally

Make sure you have `bash` installed (to automatically fetch images from gdrive), and `zola` (https://github.com/getzola/zola/releases).

Ensure you're current directory is the base of the repository before building or fetching images.

```sh
./gdrive-img.bash
```

```sh
zola build
```


## Note on Images Etc.

All binary blobs - images, video, compiled programs, etc; should be placed into the Google Drive folder.

# Tasks

+ [x] Restore old repo history
+ [ ] Transfer DNS to School Account
