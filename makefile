USERNAME=roadrunnor

build:
	docker build -t $(USERNAME)/testdocker:dev .
	docker build -t $(USERNAME)/testdocker:staging .
	docker build -t $(USERNAME)/testdocker:master .

push:
	docker push $(USERNAME)/testdocker:dev
	docker push $(USERNAME)/testdocker:staging
	docker push $(USERNAME)/testdocker:master

run-dev:
	docker run -d -p 8081:80 $(USERNAME)/testdocker:dev

run-staging:
	docker run -d -p 8082:80 $(USERNAME)/testdocker:staging

run-prod:
	docker run -d -p 8083:80 $(USERNAME)/testdocker:master

clean:
	docker stop $(docker ps -q)
	docker rm $(docker ps -aq)
