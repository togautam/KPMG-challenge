#!/bin/bash

get_nested_value() {
    object=$1
    key=$2
    value=$(echo "$object" | jq -r ".$key")
    echo "$value"
}

# Example usage
object1='{"a":{"b":{"c":"d"}}}'
key1="a.b.c"
result1=$(get_nested_value "$object1" "$key1")
echo "Result 1: $result1" # Output will be "Result 1: d"

object2='{"x":{"y":{"z":"a"}}}'
key2="x.y.z"
result2=$(get_nested_value "$object2" "$key2")
echo "Result 2: $result2" # Output will be "Result 2: a"