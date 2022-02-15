#!/bin/bash

docker build --tag jonbirge/do-ubuntu:latest .

docker push jonbirge/do-ubuntu:latest
