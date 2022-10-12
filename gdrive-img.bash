#!/bin/sh

TARGET="public/img"

mkdir -p "$TARGET"

echo "Listing Google Drive folder ..."
gdrive="$(curl -sSf 'https://drive.google.com/drive/folders/1_qviIV62bztqS3ALrsvd5RQR1k7DYhPp')"

files="$(paste <(echo "$gdrive" | strace htmlq -a data-id '.iZmuQc>c-wiz>div') <(echo "$gdrive" | htmlq -t '.iZmuQc>c-wiz>div'))"

echo "$files" | {
  while IFS=$'\t' read id name rest
  do
    echo "Downloading $name"
    curl -sSfL "https://drive.google.com/uc?id=$id" > "$TARGET/$name"
    if [ "$?" != 0 ]
    then
      echo "curl failed"
      exit 1
    fi
  done
}
