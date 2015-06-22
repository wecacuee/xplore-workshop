all: euclid-straight-lines.mp4 euclid-straight-lines.png
euclid-straight-lines.mp4: Light\ Fantastic\ 1\ -\ Let\ There\ be\ Light-kIhkG0NiEwk.mp4
	avconv -i $^ -ss 00:07:17.0 -c:a copy -t 00:01:41 -filter:v crop=320:176:0:20 $@
euclid-straight-lines.png: euclid-straight-lines.mp4
	avconv -i $^ -ss 00:01:22 -vframes 1 $@
