all: euclid-straight-lines.mp4 euclid-straight-lines.png
euclid-straight-lines.mp4: Light\ Fantastic\ 1\ -\ Let\ There\ be\ Light-kIhkG0NiEwk.mp4
	avconv -i $^ -ss 00:07:17.0 -c:a copy -t 00:01:41 -filter:v crop=320:176:0:20 $@
euclid-straight-lines.png: euclid-straight-lines.mp4
	avconv -i $^ -ss 00:01:22 -vframes 1 $@

bullet-time.mp4: Bullet\ Time\ \(39\,000FPS\ Slow\ Motion\)-Mt8YxU1mgWg.mp4
	avconv -i "$^" -ss 00:00:17.0 -c:a copy -t 00:00:38 $@

bullet-time.png: bullet-time.mp4
	avconv -i $^ -ss 00:00:32 -vframes 1 $@

the-making-of-the-matrix-bullet-time-shot.mp4:
	youtube-dl https://www.youtube.com/watch?v=uPNBdDNZbYk -o $@

bullet-time-shot.mp4: the-making-of-the-matrix-bullet-time-shot.mp4
	avconv -i "$^" -ss 00:01:00.5 -c:a copy -t 00:02:13 $@

bullet-time-shot.png: bullet-time-shot.mp4
	avconv -i $^ -ss 00:02:12 -vframes 1 $@

camera_ina_room.mp4: camera_obscura.mp4
	avconv -i "$^" -ss 00:00:40.0 -c:a copy -t 00:01:30 $@

camera_ina_room.png:
	wget http://www.strong-island.co.uk/wp-content/uploads/2014/02/for-leaflet-300dpi.jpg -O $@

moon.jpg: 
	wget http://dreamatico.com/data_images/moon/moon-4.jpg -O $@

convert 
