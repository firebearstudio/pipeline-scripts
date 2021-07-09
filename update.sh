#!/usr/bin/zsh

set -e

echo "Deploy start. Stand: $1. Branch: $2"

cd /chroot/home/a0563af8/$1
composer require "firebear/importexport:dev-$2"
bin/magento ma:e &&
bin/magento s:up &&
bin/magento s:d:c &&
bin/magento s:s:d -f &&
bin/magento ma:d &&
bin/magento c:c
