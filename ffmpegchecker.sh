 
shopt -s globstar nullglob dotglob

rm -f error.log

for file in ./**/*.{mpg,mpeg,mp4,MP4,avi,flv,mkv,mov}
do

echo "$file"

ffmpeg -i "$file" -f null -an - 2>>error.log
done
