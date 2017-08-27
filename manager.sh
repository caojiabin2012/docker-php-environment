#!/bin/bash
set -e
prj_path=$(cd $(dirname $0); pwd -P)
source $prj_path/tools/base.sh

nginx_image=nginx:1.11-alpine

app=jiabin
mysql_path=/Applications/XAMPP/xamppfiles/htdocs/www/test/mysql
mysql_password=123.com
nginx_path=/Applications/XAMPP/xamppfiles/htdocs/www/test/nginx
php_path=/Applications/XAMPP/xamppfiles/htdocs/www/test/php
nginx_config="$prj_path/nginx-config"

function run_all() {
    if [ $2 == 'php71' ] ; then
        start_mysql
        start_php
        start_nginx
    fi
}

function start_php() {
    run_cmd "docker run -d -p 9000:9000 -v ${php_path}:/var/www/html --name ${app}_php --link ${app}_mysql:mysql --privileged=true jiabin/php:7.1.8-fpm-ext"
}

function start_nginx(){
    run_cmd "docker run -d --link jiabin_php:php-fpm -p 80:80  --volumes-from jiabin_php --name ${app}_nginx  jiabin/nginx:1.13.3"
}

function build_images() {
    if [ $2 == 'php71' ] ; then
        echo jinlaile
        build_mysql
        build_nginx
        build_php
    fi
}

function start_mysql(){
    run_cmd "docker run -d -p 3306:3306 --name ${app}_mysql -v ${mysql_path}:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=${mysql_password} jiabin/mysql:5.6"
}

function build_nginx() {
    run_cmd "docker build -t nginx:1.13.3-alpine $prj_path/docker-library/nginx"
}

function build_php() {
    run_cmd "docker build -t php:7.1.8-fpm $prj_path/docker-library/php/7.1/fpm"
}

function clean_images() {
    if [ $2 == 'php71' ] ; then
        docker rmi mysql:5.6
        docker rmi php:7.1.8-fpm
        docker rmi nginx:1.13.3-alpine 
        echo ok
    fi
}

function clean_containers() {
    if [ $2 == 'php71' ] ; then
        docker rm -f jiabin_mysql 
        docker rm -f jiabin_php
        docker rm -f jiabin_nginx 
    fi
}

function clean_stop_containers() {
    run_cmd "docker rm $(docker ps -a -q)"
}

function clean_none_images() {
    docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
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
ALL_COMMANDS="build_images run_all clean_images clean_containers clean_stop_containers clean_none_images"
list_contains ALL_COMMANDS "$action" || action=help
$action "$@"
