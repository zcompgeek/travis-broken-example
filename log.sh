#!/bin/bash
set -ev

LG=$(git log --oneline $TRAVIS_COMMIT_RANGE)
LINK="<a href=\"https://github.com/zcompgeek/travis-broken-example/compare/$TRAVIS_COMMIT_RANGE\"> Full Commit Log</a>"
echo $LINK

if [! -e ./cache/salixHash]; then
	echo "123dse3" > ./cache/salixHash
else 
	OLD=$(cat ./cache/salixHash)
	echo $OLD
fi

phpunit Test.php