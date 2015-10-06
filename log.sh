#!/bin/bash
set -ev

LG=$(git log --oneline $TRAVIS_COMMIT_RANGE)
LINK="<a href=\"https://github.com/zcompgeek/travis-broken-example/compare/$TRAVIS_COMMIT_RANGE\"> Full Commit Log</a>"
echo $LINK

if test -e ./cache/salixHash; then
	OLD=$(cat ./cache/salixHash)
	echo $OLD
else
	echo "123dse3" > ./cache/salixHash
fi

phpunit Test.php