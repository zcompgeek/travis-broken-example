#!/bin/bash
set -ev

LG=$(git log --oneline $TRAVIS_COMMIT_RANGE)
LINK="<a href=\"https://github.com/zcompgeek/travis-broken-example/compare/$TRAVIS_COMMIT_RANGE\"> Full Commit Log</a>"
echo $LINK

echo "123dse3" > ./cache/salixHash

OLD=$(cat ./cache/salixHash)
echo $OLD

phpunit Test.php