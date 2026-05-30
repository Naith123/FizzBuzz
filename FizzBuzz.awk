#!/usr/bin/awk -f

BEGIN {
    rules[3] = "Fizz"
    rules[5] = "Buzz"
    
    for (i = 1; i <= 100; i++) {
        output = ""
        for (divisor in rules)
            if (i % divisor == 0)
                output = output rules[divisor]
        print (output == "") ? i : output
    }
}