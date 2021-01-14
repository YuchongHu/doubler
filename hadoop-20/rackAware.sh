#!/bin/bash
if [ "$1" == "192.168.0.1" ]
then
    echo "/rack1"
elif [ "$1" == "192.168.0.2" ]
then
    echo "/rack1"
elif [ "$1" == "192.168.0.3" ]
then
    echo "/rack1"
elif [ "$1" == "192.168.0.4" ]
then
    echo "/rack2"
elif [ "$1" == "192.168.0.5" ]
then
    echo "/rack2"
elif [ "$1" == "192.168.0.6" ]
then
    echo "/rack3"
elif [ "$1" == "192.168.0.7" ]
then
    echo "/rack3"
else
	echo "/default-rack"
fi
