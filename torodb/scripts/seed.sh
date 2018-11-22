#!/bin/sh

wget --no-check-certificate https://www.torodb.com/download/primer-dataset.json
mongoimport --host mongodb --db test --collection restaurants primer-dataset.json
rm -f primer-dataset.json*
