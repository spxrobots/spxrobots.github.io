#!/bin/bash

# Echo out Git Version (for build-id)
echo -n " ($CI_COMMIT_SHORT_SHA)" > templates/gitrev.html
