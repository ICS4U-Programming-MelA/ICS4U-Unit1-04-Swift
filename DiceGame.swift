// Copyright (c) 2021 Mel Aguoth All rights reserved.
//
// Created By: Mel Aguoth
// Date: December 6, 2021
/* Generates a random number between 1 and 6 which the user has to guess for. If the guess is
wrong, it displays as such, and when finished it will tell them how many tries it took. */
// Declare variables.
var counter: Int = 0
var randomInt = Int.random(in: 1..<7)
var userNumberInt: Int = 0

// Introduce the program.
print("This program has a random number between 1 and 6 which you have to guess for."
    + " It will keep going until you get the right number, and upon guessing"
    + " correctly, displays how many tries you took.")
repeat {
  // Get the user's number.
  print("Enter a number between 1 and 6:", terminator: " ")
  let userNumber: String = readLine() ?? ""
  let userNumberInt = Int(userNumber) ?? 0

  // Check and display whether the user's number is correct, incorrect, or invalid.
  if userNumberInt < 1 || userNumberInt > 6 {
    if userNumberInt == 0 {
      print("")
      print("That isn't an integer. Please try again.")
    } else {
      print("")
      print("\(userNumberInt) is out of range. Please try again.")
    }
  } else if userNumberInt == randomInt {
    print("")
    print("You guessed correctly! It took you \(counter + 1) attempt(s).")
    break
  } else {
    if userNumberInt > randomInt {
      print("")
      print("You guessed too high. Please try again.")
    } else {
    print("")
    print("You guessed too low. Please try again.")
    }
  }

// Increment the counter.
  counter += 1
} while userNumberInt != randomInt
