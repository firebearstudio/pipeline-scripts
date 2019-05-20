#!/usr/bin/zsh

cd /var/www/evgeniy/xray/app/code/Firebear/ImportExport
git fetch
git checkout origin/$1
cd ../../../../
bin/magento setup:upgrade
bin/magento setup:di:compile
