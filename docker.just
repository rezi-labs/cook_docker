

build version:
    docker build -t {{image_name}}:{{version}} .

push:
    just _d_push 1.0.0

_d_push version:
    docker build -t {{image_name}}:{{version}} .
    docker push {{image_name}}:{{version}}
