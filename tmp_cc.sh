mkdir /tt # create tt folder
export TMP="/tt" # change tmp folder to /tt (for pip)
export TMPDIR="/tt"
export XDG_CACHE_HOME="/tt"
export PATH=$PATH:/opt/bin
export CC=/opt/bin/arm-openwrt-linux-gnueabi-gcc-8.4.0
export CXX=/opt/bin/arm-openwrt-linux-gnueabi-g++
pip --cache-dir=/tt install opencv-python
