#!/bin/bash

fizzbuzz() {
    local n=$1
    case 0 in
        $((n % 15))) echo "FizzBuzz" ;;
        $((n % 3)))  echo "Fizz" ;;
        $((n % 5)))  echo "Buzz" ;;
        *)           echo $n ;;
    esac
}

for ((i = 1; i <= 100; i++)); do
    fizzbuzz $i
done