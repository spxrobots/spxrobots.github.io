#!/bin/bash

TARGET="./static"

is_folder () {
  local data
  while read data
  do
    if echo "$data" | grep -qi 'folder'
    then
      echo "folder"
    else
      echo "file"
    fi
  done
}

fetch_folder () {
  local target_dir="$1"
  local folder_id="$2"

  mkdir -p "$target_dir"

  local gfolder="$(curl -sSf "https://drive.google.com/drive/folders/$2")"

  local n_files="$(echo "$gfolder" | htmlq '.iZmuQc>c-wiz>div' | wc -l)"

  # <ID> \t <NAME> \t <FOLDERTYPE>
  local files="$(
    paste \
      <(echo "$gfolder\n" | htmlq --attribute data-id '[data-id]') \
      <(echo "$gfolder\n" | htmlq --text '.KL4NAf') \
      <(echo "$gfolder\n" | htmlq --attribute aria-label '.KL4NAf' | is_folder)
  )"

  if [ "$n_files" = 0 ]
  then
    echo "Empty folder"
    return
  else
    echo "Folder contains $n_files items"
  fi

  echo "$files"

  echo "$files" | {
    local id name foldertype rest
    while IFS=$'\t' read id name foldertype rest
    do
      if [ "$foldertype" = "folder" ]
      then
        fetch_folder "$target_dir/$name" "$id"
      else
        if [ -f "$target_dir/$name" ]
        then
          echo "Already have $name"
        else
          echo "Downloading $name"
          curl -sSfL "https://drive.google.com/uc?id=$id" > "$target_dir/$name"
          if [ "$?" != 0 ]
          then
            echo "Error downloading $name"
            exit 1
          fi
        fi
      fi
    done
  }
}

fetch_folder "$TARGET" "1_qviIV62bztqS3ALrsvd5RQR1k7DYhPp"
