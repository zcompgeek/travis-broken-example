#!/bin/bash
set -ev

STR="Hello World!"
echo $STR

LG=$(git log --oneline $TRAVIS_COMMIT_RANGE)
echo $LG
LINK="<a href=\"https://github.com/zcompgeek/travis-broken-example/compare/$TRAVIS_COMMIT_RANGE\"> Full Commit Log</a>"
echo $LINK

phpunit Test.php