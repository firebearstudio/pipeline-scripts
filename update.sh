#!/usr/bin/zsh

for i in $@; do
    cd /var/www/testing/$i
    composer update "firebear/importexport"
    bin/magento s:up &&
    bin/magento s:di:c &&
    bin/magento s:s:d -f &&
    bin/magento c:c
done
