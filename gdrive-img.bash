#!/bin/sh

TARGET="public/img"

is_folder () {
  if grep -qiv 'folder'
  then
    echo "folder"
  else
    echo "file"
  fi
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
      <(echo "$gfolder" | htmlq -a data-id '.iZmuQc>c-wiz>div' | cat) \
      <(echo "$gfolder" | htmlq -a data-tooltip '.iZmuQc>c-wiz>div div[data-tooltip]' | cat) \
      <(echo "$gfolder" | htmlq '.iZmuQc>c-wiz>div' | is_folder)
  )"

  if [ "$n_files" = 0 ]
  then
    echo "Empty folder"
    return
  else
    echo "Folder contains $n_files items"
  fi

  echo "$files" | {
    local id name foldertype rest
    while IFS=$'\t' read id name foldertype rest
    do
      echo "Downloading $foldertype \`$name\`"
      if [ "$foldertype" = "folder" ]
      then
        fetch_folder "$target_dir/$name" "$id"
      else
        curl -sSfL "https://drive.google.com/uc?id=$id" > "$target_dir/$name"
        if [ "$?" != 0 ]
        then
          echo "curl failed"
          exit 1
        fi
      fi
    done
  }
}

fetch_folder "$TARGET" "1_qviIV62bztqS3ALrsvd5RQR1k7DYhPp"
