#! /bin/bash

function create_data_dir() {
  local fqDirectoryName="/data/$1"
  mkdir -p $fqDirectoryName
  chown nobody:docker $fqDirectoryName
  chmod 770 $fqDirectoryName
}

create_data_dir portainer
create_data_dir vernemq
