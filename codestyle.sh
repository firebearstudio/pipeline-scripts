#!/usr/bin/zsh

cd /var/www/evgeniy/xray/app/code/Firebear/ImportExport
git fetch
git checkout origin/$1
cd ../../../../

module=app/code/Firebear/ImportExport
codesniffer=$module/dev/codesniffer

vendor/bin/phpcs -p --standard=$codesniffer/ruleset.xml $module
if [ -f $codesniffer/ruleset_addon.xml ]; then
    vendor/bin/phpcs -p --standard=$codesniffer/ruleset_addon.xml $module
fi
