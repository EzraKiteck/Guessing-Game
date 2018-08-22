//
//  main.swift
//  GuessingGame
//
//  Created by Ezra Kiteck on 8/16/18.
//  Copyright © 2018 Ezra Kiteck. All rights reserved.
//

import Foundation

var wantsToPlay = true
print("What is your name?")
let name = readLine()
print("Hello, \(name!), let's play a guessing game!")

func Game() {
    //Sets counter and number
    var counter = 7
    let number = Int(arc4random_uniform(101)) + 1
    //Asks input
    print("I am thinking of a number between 1 and 100.")
    print("What is your guess?")
    repeat {
        var guess = Int(readLine()!)
        while guess == nil {
            print("That's not a number...")
            guess = Int(readLine()!)
        }
        print("You guessed \(guess!)...")
        //Compares guess to number, looping until guess = number or counter = 0
        if (Int(guess!) == number) {
            print("Hey, you got it right!")
            break
        } else {
            if (Int(guess!) > number) {
                print("Sorry, too high!")
            } else {
                print("Nope, too low!")
            }
            counter -= 1
            if counter == 0 {
                print("Oops! Out of guesses...you lost.  The number was \(number).")
            } else {
                print("You have \(counter) tries left, guess again.")
            }
        }
    } while counter != 0
    
    //Asks if the player wants to play again
    print("Would you like to play again, \(name!)?")
    var answer = readLine()
    while (answer != "yes" && answer != "no") {
        print("Please answer 'yes' or 'no'")
        answer = readLine()
    }
    if (answer == "yes") {
        print("Alright!")
        wantsToPlay = true
    } else {
        print("Boo...")
        wantsToPlay = false
    }
    
}

//Runs function
while wantsToPlay == true {
    Game()
}
