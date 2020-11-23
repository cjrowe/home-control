#! /bin/bash

function create_data_directory() {
  local fqDirectoryName="/data/$1"
  mkdir -p $fqDirectoryName
  chown :docker $fqDirectoryName
  chmod 770 $fqDirectoryName
}

function create_log_directory() {
  local fqDirectoryName="/var/log/$1"
  mkdir -p $fqDirectoryName
  chown :docker $fqDirectoryName
  chmod 770 $fqDirectoryName
}

create_data_directory portainer
create_data_directory mosquitto

create_log_directory mosquitto
