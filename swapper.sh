fallocate -l 512M /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo '/swapfile none swap sw 0 0' >> /etc/fstab && sync && echo 3 > /proc/sys/vm/drop_cache
