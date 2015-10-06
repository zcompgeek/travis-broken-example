#!/bin/bash
set -ev

STR="Hello World!"
echo $STR

LOG = git log --oneline $TRAVIS_COMMIT_RANGE
echo $LOG
LINK = "<https://github.com/zcompgeek/travis-broken-example/compare/$LOG | Full Changelog>"
echo $LINK

phpunit Test.php