/**
 * HR: 30 Days -- Day 21
 * -swinful
 **/

import Foundation


// Start of struct Printer
struct Printer<type> {
  func printArray(theType: [type]) {
    theType.forEach {print ($0)}
  }
} // End of struct Printer

let vInt = [1, 2, 3]
let vString = ["Hello", "World"]

Printer<Int>().printArray(vInt)
Printer<String>().printArray(vString)

