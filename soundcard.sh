#!/bin/sh

allRaw=$(pactl list short sinks)
allIds=$(pactl list short sinks | awk '{ print $1 }')
allNames=$(pactl list short sinks | awk -F'__' '{ print $2 }')

currentId=$(pactl list short sinks | grep $(pactl get-default-sink) | awk '{ print $1 }')

nextId=$(echo -e $allIds | grep -A 1 $currentId)

echo $allRaw

echo $allIds

echo $allNames

echo $currentId

echo $nextId

exit 0


allCards=$(pactl list short sinks | awk -F'__' '{ print $2 }')
currentId=$(pactl list short sinks | grep $(pactl get-default-sink) | awk '{ print $1 }')
otherIds=$(pactl list short sinks | awk '{ print $1 }' | grep -v $currentId)
allIds=$(pactl list short sinks
nextId=$(echo $allCards)

echo $currentId

echo $otherIds

echo $nextId

