#!/bin/sh

all: clean install run

init: clean install

clean:
	rm -rf ./node_modules  # Remove node_module directory if it exists so as to avoid inconsistency errors

install:
	npm install -g yo generator-hubot

run:
	./bin/hubot -a shell
