# Read the text contents of a file and output a Turkish text2speech file 
# Example usage: `zsh read-tr.sh metin.txt`
metin=`cat $1`
say -v Yelda -o out.m4a "$metin"
ffmpeg -i out.m4a -c:v copy -c:a libmp3lame -q:a 4 out.mp3
rm out.m4a