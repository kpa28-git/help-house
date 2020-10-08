
# One Sentence
The exFAT filesystem was a formerly properietary filesystem created by windows
and is used commonly as a cross platform windows/mac/linux/bsd filesystem.

# Background
FAT32 was the predecessor to exFAT and shares similarities with it. The biggest
difference is the latter can hold files greater than 4GB in size. Both of the
FATs were and are used commonly to allow file transfer between windows, mac,
bsd, and linux systems.

FUSE is an implementation of exFAT that can be used by linux and FreeBSD
systems. The Linux Kernel has an exFAT driver that is preferred to the FUSE
implementation if available because it is faster.
