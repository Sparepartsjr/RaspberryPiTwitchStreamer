raspivid -n -t 0 -w 1280 -h 720 -fps 25 -g 50 -b 250000 -o - | ffmpeg -r 25.37 -i - -f alsa -ar 22050 -ac 1 -itsoffset 15.0 -i hw:1,0 -c:v copy -r 25 -vsync 1 -c:a mp3 -f flv $1
