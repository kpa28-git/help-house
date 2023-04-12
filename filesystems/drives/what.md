# One Sentence
In Linux, all drives are files.

# Background
This section gives a working understanding of how hard drives work on Linux and basic
information on how to prepare them. Use other hpages or manpages to understand
how to use the commandline tools described here.

## How Hard Drives work in Linux
### Device File
Recall than in the Unix philosophy, everything is a file. Things may not _literally_
be files, but the point is they should be able to act like them. To the extent they
follow Unix, Linux and BSD thus also treat everything like files. In these operating
systems, you have _file abstractions_ like _device files_ and _sockets_. Even though
these aren't files in the traditional sense, they can be read from and written to,
just like files.

When you plug in a hard drive in Linux, a _device file_ is created in the `/dev`
directory. Usually the first hard drive is `/dev/sda`, second is `/dev/sdb`, and so on
(but not necessarily). You can use the `lsblk` (list block devices) tool to print
information on what _block devices_ are available.

### Block Device
A hard drive is one example of a [block device](https://unix.stackexchange.com/questions/259193/what-is-a-block-device).
A block device is basically something you can read from or write to in "blocks" instead of
individual characters. It may mean something specific, but for a working understanding
you can treat block device and hard drive as interchangeable. Note that you can have
device files that don't point to block devices (`/dev/random` and `/dev/zero` are examples).

### Partition Tables and Partitions
A hard drive has a partition table, partitions, and filesystems. A partition is basically
a chunk of a block device. Partitions, like mathematical partitions, cannot overlap with
each other. Other than logically dividing the hard drive into usable areas, the other
job of the partition is to hold the filesystem. The filesystem is the interface for you
to create, modify, and delete files.

A partition table is a single, low-level thing on the disk that describes all the partitions a
disk has. So the first step to making a disk usable is to create and setup the partition
table.

### MBR and GPT
Two different protocols for partition tables are master boot record (MBR) and
grand partition table (GPT). I don't know the difference between them, but basically
they can each support different filesystems and features. MBR is the older one and
GPT is the newer one. You usually want to use GPT unless you need to use MBR for some
reason (using some kind of DOS drive).

### Filesystems
To actually use a partition, it needs a filesytem. A filesystem is the interface
that is used to manage files. Many filesystems exist, each with different features,
for example `ext4` is commonly used on Linux and `zfs` is commonly used on FreeBSD.

## How to Use Drives
### Creation
The `fdisk` tool is a simple tool letting you create/delete partitions and create
fresh partitions. Of course, you can also create fresh partition tables with it.
Use `mkfs` to make new filesystems on partitions.

The GNU `parted` tool is another tool that can help you repartition a drive and
create filesystems. I prefer using the separete `fdisk` and `mkfs` tools though.

### Mounting
In order to use a partition, it has to be _mounted_ to the filesystem.
Mounting is kind of like the docking procedure on a space ship. It's where
the two systems "connect" and can then transfer things between them.
Use the `mount` and `umount` commands to mount partitions to particular
(empty) directories and also unmount them, respectively.

