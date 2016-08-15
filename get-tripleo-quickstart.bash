#!/bin/bash


files=( "$(ls | grep -v ${0:2})" )
proj_url=https://github.com/openstack/tripleo-quickstart.git
proj_dir=tripleo-quickstart
working_dir=working-dir

mkdir -p $working_dir
git clone $proj_url $proj_dir
cd $proj_dir
for file in ${files[@]};do
  ln -sf ../$file ./  
done


