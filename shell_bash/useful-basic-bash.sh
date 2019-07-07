#!/bin/bash
# Kevin Patel

# Rerun sudo on previous command
sudo !!

curl ifconfig.me

# Print PYTHONPATH
python3 -c "import sys; print(sys.path)"


echo "change ownership of current directory and all subdirectories to current user";
chown $USER:$USER .;


ps aux | sort -nk +4 | tail

echo "ls -l" | at midnight

telnet towel.blinkenlights.nl

ctrl + l 		# Clear bash terminal

while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &

diff <(sort file1) <(sort file2)

lsof -i
lsof -P -i -n
ss -p

ifconfig | convert label:@- ip.png

ssh-copy-id username@hostname

ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'

ffmpeg -y -f alsa -ac 2 -i pulse -f x11grab -r 30 -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -i :0.0 -acodec pcm_s16le output.wav -an -vcodec libx264 -vpre lossless_ultrafast -threads 0 output.mp4
ffmpeg -f x11grab -r 25 -s 800x600 -i :0.0 /tmp/outputFile.mpg

dd if=/dev/zero of=/dev/null bs=1M count=32768

mount /path/to/file.iso /mnt/cdrom -oloop

ps awwfux | less -S

pathmunge () {
	if ! echo "$PATH" | /bin/grep -Eq "(^|:)$1($|:)" ; then
		if [ "$2" = "after" ] ; then
			PATH="$PATH:$1"
		else
			PATH="$1:$PATH"
		fi
	fi
}

# View process info
ps aux
top
htop

# View ports connected
sudo netstat -tulpn

# get disk usage of all drives in human readable form
df -ah $DIR

# get disk usage of $DIR in human readable form
du -sh $DIR

nvidia-smi # nvidia device information


# Supported SSH escape sequences (first press Enter):
#   ~.  - terminate session
#   ~B  - send a BREAK to the remote system
#   ~R  - Request rekey (SSH protocol 2 only)
#   ~#  - list forwarded connections
#   ~?  - this message
#   ~~  - send the escape character by typing it twice
# (Note that escapes are only recognized immediately after newline.)


# list my processes:
ps -u $whoami

# kill all my processes:
killall -u $whoami -m .

# kill by pid
pkill PID

# kill multiple by pids (uses SIGTERM by default, the most safe way to kill)
kill PID1 PID2 PID3

# kill multiple by pids (SIGKILL or signal 9 is the most unsafe way to kill)
kill -9 PID1 PID2 PID3
# aka:
kill -SIGKILL PID1 PID2 PID3
