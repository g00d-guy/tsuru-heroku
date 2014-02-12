all: build

build:
        docker build -t git.bonustab.net:5050/tsuru/heroku .

install:
	docker push git.bonustab.net:5050/tsuru/heroku
