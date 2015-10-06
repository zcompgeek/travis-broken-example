#!/bin/bash
set -ev

STR="Hello World!"
echo $STR

LG= $(git log --oneline $(TRAVIS_COMMIT_RANGE))
echo $LG
LINK="<https://github.com/zcompgeek/travis-broken-example/compare/$LG | Full Changelog>"
echo $LINK

phpunit Test.php