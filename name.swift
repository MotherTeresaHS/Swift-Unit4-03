// Created by: Mr. Coxall
// Created on: Aug 2018
// Created for: ICS3U
// This program shows optional and named parameters

import Foundation

func printName(first : String, initial : String = "Bob", last : String) {
    // print name
    
    print("\(first) \(initial) \(last)")
}

print("Enter your first name: ")
if let firstName : String = readLine() {
    // first name entered
    print("Enter your last name: ")
    if let lastName : String = readLine() {
        // last name entered correctly
        print("Do you want to enter your initials?(y/n): ")
        if let initialChoice : String = readLine() {
            // something entered for if you want initials
            if initialChoice == "y" || initialChoice == "n" {
                // y/n entered correctly, so now carry on with program
                if initialChoice == "y" {
                    print("Enter your initials: ")
                    if let initialName = readLine() {
                        printName(first: firstName, initial: initialName, last: lastName)
                    }
                    else {
                        print("You did not enter an initial")
                    }
                }
                else {
                    printName(first: firstName, last: lastName)
                }
            }
            else {
                print("You did not enter y/n")
            }
        }
    }
    else {
        print("You did not enter a last name")
    }
}
else {
    print("You did not enter a name")
}
