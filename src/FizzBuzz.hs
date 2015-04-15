module FizzBuzz where

divisibleBy :: Int -> Int -> Bool
divisibleBy x y = x `mod` y == 0

fizz :: Int -> Bool
fizz x = x `divisibleBy` 3

buzz :: Int -> Bool
buzz x = x `divisibleBy` 5

fizzBuzzer :: Int -> String
fizzBuzzer x =
  if fizz x && buzz x then
    "FizzBuzz"
  else if fizz x then
    "Fizz" 
  else if buzz x then
    "Buzz"
  else
    show x
