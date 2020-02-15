/**
 * HR: 30 Days -- Day 03
 * -swinful
 **/

import Foundation

func isOdd(N: Int) -> Bool {
  return N % 2 == 0
}

let theInt = Int(readLine()!)!

if !isOdd(theInt) { // its even
  switch theInt {
  case 2...5:
    print("Not Weird")
    
  case 6...20:
    print("Weird")
    
  case let n where n > 20:
    print("Not Weird")
    
  default: break
    
  }
} else { // its odd
  print("Weird")
}

