all: image run

image:
	docker build --build-arg http_proxy=${http_proxy} --tag=ntp .

run:
	docker run -d --cap-add SYS_RESOURCE --cap-add SYS_TIME -v $(shell pwd)/ntp.conf:/etc/ntp.conf -v $(shell pwd)/ntp.keys:/etc/ntp.keys -p 123:123/udp --name ntp ntp

exec:
	docker exec -it ntp bash

stop:
	docker stop ntp
	docker rm ntp

