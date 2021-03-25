%Fizzbuzz implementation in Matlab

number = 1;
while number <1001
   modulofive = mod(number,5);
   modulothree = mod(number,3);
   if modulofive == 0 && modulothree == 0
     disp("Fizzbuzz")
   elseif modulothree == 0
     disp("Fizz")  
   elseif modulofive == 0
     disp("Buzz")  
   else
    disp(number);
   end    
   number = number + 1;
end