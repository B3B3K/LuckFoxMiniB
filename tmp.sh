mkdir /tt # create tt folder
export TMP="/tt" # change tmp folder to /tt (for pip)
export TMPDIR="/tt"
export XDG_CACHE_HOME="/tt"
pip --cache-dir=/tt install opencv-python
