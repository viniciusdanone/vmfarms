
#!/bin/bash
fn_build_docker_image(){
    docker build -t vmfarms ../dockerize
    docker image tag vmfarms viniciusdanone/vmfarms:latest
    docker image push viniciusdanone/vmfarms:latest
}


fn_build_docker_image;