#!/usr/bin/zsh

cd /var/www/evgeniy/xray/app/code/Firebear/ImportExport
git fetch
git checkout origin/$1
cd ../../../../

bin/magento setup:upgrade &&
bin/magento setup:di:compile &&
vendor/bin/phpstan analyse --no-progress -c /home/owner/scripts/phpstan.neon app/code/Firebear/ImportExport
