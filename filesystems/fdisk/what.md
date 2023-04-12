# One Sentence
The `fdisk` tool lets you create and modify partition tables.

# Background
See `linux/devices/drives` for background on how drives work in Linux.

The `fdisk` tool is a simple tool letting you create/delete partitions and create
fresh partitions. Of course, you can also create fresh partition tables with it.
The GNU `parted` tool can let you manipulate partitions _and_ filesystems,
but I prefer using `fdisk` and `mkfs`.