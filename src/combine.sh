# Combine an image and audio file int out.mkv
# Example usage: `zsh combine.sh in.jpg in.mp3`
ffmpeg -loop 1 -i $1 -i $2 -shortest -acodec copy -vcodec mjpeg out.mkv