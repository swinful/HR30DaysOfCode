/**
 * HR: 30 Days -- Day 06
 * -swinful
 **/

import Foundation

let height = Int(readLine()!)!
var stairCase = String(count: height, repeatedValue: Character("#"))
for _ in 0..<height {
  stairCase.removeAtIndex(stairCase.startIndex)
  print("\(stairCase)")
  // stairCase += "#"
}

