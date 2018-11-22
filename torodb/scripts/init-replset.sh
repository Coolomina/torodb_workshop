#!/bin/sh

mongo --host mongodb --eval "rs.initiate()"
