docker.image:
	docker build -f deployment/Dockerfile -t sandbox/akash-web:local --compress .

docker.rm:
	docker stop akash-web_local
	docker rm akash-web_local

docker.start:
	docker run -p 10000:80 --name akash-web_local -d sandbox/akash-web:local

docker.stop:
	docker stop akash-web_local
