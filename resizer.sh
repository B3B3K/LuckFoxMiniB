# run after compiling sdk of buildroot from luckfox in host computer
### ATTENTION ! ###
### DAMAGE WILL ###
### SAVED TO    ###
### IMAGES,     ###
### BACKUP THEM ###
truncate --size 5G rootfs.img && resize2fs rootfs.img # have tryed 8gb but it did not worked, idk why)
truncate --size 500M oem.img && resize2fs oem.img # you can change size
