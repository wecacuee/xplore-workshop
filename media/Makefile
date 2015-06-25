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

Animal\ Eyes\ _\ Gresham\ College.mp4:
	firefox http://video.vzaar.com/vzaar/vze/8a1/target/vze8a1527162304a31a6dc4fe3c38dcd8a.mp4?AWSAccessKeyId=AKIAJ74MFWNVAFH6P7FQ&Expires=1435181684&Signature=sO9jwGSOGndkVuHlPQ7Mnr7Tydk%3D&ren=0&ts=20150624203440&sig=5c8bf2efc22dd7504d76d0de585b48c5&ec_seek=0

pinhole-eyes.mp4: Animal\ Eyes\ _\ Gresham\ College.mp4
	avconv -i "$^" -ss 00:24:45.0 -c:a copy -t 00:00:35 $@

chambered-nautilus.mp4:
	youtube-dl https://www.youtube.com/watch?v=QMFqV4SJLWg -o $@

chambered-nautilus-accident.mp4: chambered-nautilus.mp4
	avconv -i "$^" -ss 00:00:39.0 -c:a copy -t 00:00:10 $@

chambered-nautilus-accident.jpg:
	wget https://upload.wikimedia.org/wikipedia/commons/a/ad/Nautilus-JB-01.jpg?download -O $@
	convert $@ -scale 25% $@
