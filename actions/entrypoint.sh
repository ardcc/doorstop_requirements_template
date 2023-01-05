#!/bin/bash -l

# run deploy.sh
bash deploy.sh

# run sync_tex.sh on beamer files in .dist directory
bash sync_tex.sh .dist beamer
