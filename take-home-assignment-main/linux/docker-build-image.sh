#!/bin/bash
TAG=`echo $RANDOM | md5sum | head -c 6; echo;`

fn_build_docker_image(){
    docker build -t vmfarms ../dockerize
    docker image tag vmfarms viniciusdanone/vmfarms:$TAG
    docker image push viniciusdanone/vmfarms:$TAG
}
fn_create_script(){
    cat <<EOF > docker-$TAG.sh
        #!/bin/bash
        docker build -t vmfarms ../dockerize
        docker image tag vmfarms viniciusdanone/vmfarms:$TAG
        docker image push viniciusdanone/vmfarms:$TAG
EOF
}
#fn_build_docker_image; -> Enable to build and push image with static name
#fn_create_script; -> Enable to build with randon name