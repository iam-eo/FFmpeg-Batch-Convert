shopt -s globstar nullglob dotglob

for file in ./**/*.{mpg,mpeg,mp4,MP4,avi,flv}
do

echo "$file"

ffmpeg -i "$file" -f null -an - 2>>error.log
done
