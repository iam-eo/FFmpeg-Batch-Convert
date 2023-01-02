shopt -s globstar nullglob dotglob

for file in ./**/*.{mpg,mpeg,mp4,avi}
do

dirPath="${file%/*}/encoded"
mkdir -p "${dirPath}"

oldname="${file}"
fileext="${file##*.}"

newname="${oldname%.$fileext}_convert.$fileext"

mv "$oldname" "$newname"

ffmpeg -i "$newname" -c:a copy -s 1280:720 "${oldname%.$fileext}".mp4 > output.txt 2>&1

mv "${oldname%.$fileext}".mp4 "$dirPath"
mv "$newname" "$oldname"

done
