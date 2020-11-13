#! /bin/bash

function create_data_dir() {
  fqDirectoryName = "/dir/$1"
  mkdir -p $fqDirectoryName
  chown :docker $fqDirectoryName
}

create_data_dir portainer
create_data_dir vernemq
