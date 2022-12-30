for i in *.mp4;
do name=`echo $i | cut -d'.' -f1`;
echo $name;
mkdir encoded;
ffmpeg -i "$i" -c:a copy -s 1280:720 "encoded/$name.mp4";
done
