/**
 * HR: 30 Days -- Day 04
 * -swinful
 **/

import Foundation

class Person {
  
  var age: Int
  
  init(initial_Age: Int) {
    if initial_Age < 0 {
      age = 0
      print("This person is not valid, setting age to 0.")
    } else {
      age = initial_Age
    }
  }
  
  func amIOld() {
    switch age {
    case let n where n < 13:
      print("You are young.")
    case let n where n >= 13 && n < 18:
      print("You are a teenager.")
    default:
      print("You are old.")
    }
  }
  
  func yearPasses() {
    ++age
  }
}

let person = Person(initial_Age: -1)
person.yearPasses()
person.yearPasses()
person.yearPasses()
person.amIOld()

