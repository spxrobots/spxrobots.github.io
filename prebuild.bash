#!/bin/bash

# Echo out Git Version (for build-id)
echo -n " ($(git rev-parse --short HEAD))" > templates/gitrev.html
