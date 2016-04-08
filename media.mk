all: media/euclid-straight-lines.mp4 media/euclid-straight-lines.png
media/euclid-straight-lines.mp4: media/Light_Fantastic_1_-_Let_There_be_Light-kIhkG0NiEwk.mp4
	avconv -i "$^" -ss 00:07:17.0 -c:a copy -t 00:01:41 -filter:v crop=320:176:0:20 "$@"
media/euclid-straight-lines.png: media/euclid-straight-lines.mp4
	avconv -i "$^" -ss 00:01:22 -vframes 1 "$@"

media/bullet-time.mp4: media/Bullet_Time_(39,000FPS_Slow_Motion)-Mt8YxU1mgWg.mp4
	avconv -i "$^" -ss 00:00:17.0 -c:a copy -t 00:00:38 "$@"

media/bullet-time.png: media/bullet-time.mp4
	avconv -i "$^" -ss 00:00:32 -vframes 1 "$@"

media/the-making-of-the-matrix-bullet-time-shot.mp4:
	youtube-dl https://www.youtube.com/watch?v=uPNBdDNZbYk -o "$@"

media/bullet-time-shot.mp4: media/the-making-of-the-matrix-bullet-time-shot.mp4
	avconv -i "$^" -ss 00:01:00.5 -c:a copy -t 00:02:13 "$@"

media/bullet-time-shot.png: media/bullet-time-shot.mp4
	avconv -i "$^" -ss 00:02:12 -vframes 1 "$@"

media/camera_ina_room.mp4: media/camera_obscura.mp4
	avconv -i "$^" -ss 00:00:40.0 -c:a copy -t 00:01:30 "$@"

media/camera_ina_room.png:
	wget http://www.strong-island.co.uk/wp-content/uploads/2014/02/for-leaflet-300dpi.jpg -O "$@"

media/moon.jpg: 
	wget http://dreamatico.com/data_images/moon/moon-4.jpg -O "$@"

media/Animal_Eyes___Gresham_College.mp4:
	firefox http://video.vzaar.com/vzaar/vze/8a1/target/vze8a1527162304a31a6dc4fe3c38dcd8a.mp4?AWSAccessKeyId=AKIAJ74MFWNVAFH6P7FQ&Expires=1435181684&Signature=sO9jwGSOGndkVuHlPQ7Mnr7Tydk%3D&ren=0&ts=20150624203440&sig=5c8bf2efc22dd7504d76d0de585b48c5&ec_seek=0

media/pinhole-eyes.mp4: media/Animal_Eyes___Gresham_College.mp4
	avconv -i "$^" -ss 00:24:45.0 -c:a copy -t 00:00:35 "$@"

media/chambered-nautilus-full.mp4:
	youtube-dl https://www.youtube.com/watch?v=QMFqV4SJLWg -o "$@"

media/chambered-nautilus-accident.mp4: media/chambered-nautilus-full.mp4
	avconv -i "$^" -ss 00:00:39.0 -c:a copy -t 00:00:10 "$@"

chambered-nautilus-accident.jpg:
	wget https://upload.wikimedia.org/wikipedia/commons/a/ad/Nautilus-JB-01.jpg?download -O "$@"
	convert "$@" -scale 25% "$@"

media/history-of-photography-full.mp4:
	youtube-dl https://www.youtube.com/watch?v=rsYzSZlzC4Y -o "$@"

media/history-of-photography.mp4: media/history-of-photography-full.mp4
	avconv -i "$^" -ss 00:00:00.0 -c:a copy -t 00:01:34 "$@"

media/how-film-cameras-work.mp4: 
	youtube-dl https://www.youtube.com/watch?v=ws0Gam6m6bQ -o "$@"

media/how-digital-cameras-work.mp4:
	youtube-dl https://www.youtube.com/watch?v=HEVEGVV4EHk -o "$@"

media/dynamic-fusion-full.mp4:
	youtube-dl https://www.youtube.com/watch?v=i1eZekcc_lM -o "$@"

media/dynamic-fusion.mp4: media/dynamic-fusion-full.mp4
	avconv -i "$^" -ss 00:00:00.0 -c:a copy -t 00:01:04 "$@"

# if you want to clean up
.PHONY: media_clean
media_clean:
	mkdir -p media/tmp
	mv media/*.* media/tmp

media/%.mp4: media/tmp/%.mp4
	mv "$^" "$@"
media/%.png: media/tmp/%.png
	mv "$^" "$@"
media/%.jpg: media/tmp/%.jpg
	mv "$^" "$@"
media/%.pdf: media/tmp/%.pdf
	mv "$^" "$@"
media/%.tex: media/tmp/%.tex
	mv "$^" "$@"
