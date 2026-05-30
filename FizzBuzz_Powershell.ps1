1..100 | ForEach-Object {
    switch ($_) {
        { $_ % 15 -eq 0 } { "FizzBuzz"; break }
        { $_ % 3 -eq 0 }  { "Fizz"; break }
        { $_ % 5 -eq 0 }  { "Buzz"; break }
        default           { $_ }
    }
}