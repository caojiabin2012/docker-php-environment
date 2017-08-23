#!/bin/bash
set -e
prj_path=$(cd $(dirname $0); pwd -P)
source $prj_path/tools/base.sh

nginx_image=nginx:1.11-alpine

app=jiabin-webserver
nginx_config="$prj_path/nginx-config"

function run_all() {
    if [ $2 == 'php56' ] ; then
        start_mysql
        start_php
        start_nginx
    fi
}
function start_mysql(){
    run_cmd "docker run -d -p 3306:3306 --name jiabin_mysql -v /Applications/XAMPP/xamppfiles/htdocs/www/test/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123.com mysql:5.6"
}

function start_php() {
    run_cmd "docker run -d -p 9000:9000 -v /Applications/XAMPP/xamppfiles/htdocs/www/test/php:/var/www/html --name jiabin_php --link jiabin_mysql:mysql --privileged=true php:7.1.8-fpm-alpine"
}

function start_nginx(){
    run_cmd "docker run -d --link jiabin_php:php-fpm -p 80:80  --volumes-from jiabin_php --name jiabin_nginx  nginx:1.13.3"
}

function build_images() {
    if [ $2 == 'php56' ] ; then
        echo jinlaile
        #build_mysql
        build_nginx
        build_php
    fi
}

function build_nginx() {
    run_cmd "docker build -t nginx:1.13.3-alpine $prj_path/docker-library/nginx"
}

function build_php() {
    run_cmd "docker build -t php:7.1.8-fpm-alpine $prj_path/docker-library/php/7.1/fpm/alpine"
}

function clean_images() {
    if [ $2 == 'php56' ] ; then
        #docker rmi mysql:5.6
        docker rmi php:7.1.8-fpm-alpine
        docker rmi nginx:1.13.3-alpine 
    fi
}

function clean_containers() {
    if [ $2 == 'php56' ] ; then
        docker rm -f jiabin_mysql 
        docker rm -f jiabin_php 
        docker rm -f jiabin_nginx 
    fi
}

function help() {
    cat <<-EOF

    Usage: manager.sh [options]

    Valid options are:

    build_images
    run_all
    clean_images 
    clean_containers

    -h                      show this help message and exit

EOF
}

action=${1:-help}
ALL_COMMANDS="build_images run_all clean_images clean_containers"
list_contains ALL_COMMANDS "$action" || action=help
$action "$@"
