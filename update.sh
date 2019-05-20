#!/usr/bin/zsh

for i in $@ do
    cd /var/www/testing/$i/app/code/Firebear/ImportExport/
    git pull
    cd ../../../../
    bin/magento s:up
    bin/magento s:s:d -f
done
