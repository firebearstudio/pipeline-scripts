#!/usr/bin/zsh

for i in $@; do
    cd /var/www/testing/$i/app/code/Firebear/ImportExport/
    git pull
    cd ../../../../
    bin/magento s:up &&
    bin/magento s:di:c &&
    bin/magento s:s:d -f &&
    bin/magento c:c
done
