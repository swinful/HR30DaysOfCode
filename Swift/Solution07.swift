/**
 * HR: 30 Days -- Day 07
 * -swinful
 **/

import Foundation

func parseInts(line: String) -> [Int] {
  var string   = line
  var integers = [Int]()

  while string.containsString(" ") {
    let spaceIndex = string.rangeOfString(" ")
    let firstInt   = string[string.startIndex..<(spaceIndex?.startIndex)!]
    string         = string[(spaceIndex?.endIndex)!..<string.endIndex]
    integers.append(Int(firstInt)!)
  }

  if !string.isEmpty {
    integers.append(Int(string)!)
  }
  return integers
}

func reverse(anArray: [Int]) {
  for (var i = anArray.count-1; i >= 0; --i) {
    // ourArray.append(anArray[i])
    print("\(anArray[i])", terminator: " ")
  }
  print("")
}


var n = Int(readLine()!)!
let line = readLine()!
let numbers = parseInts(line)
reverse(numbers)
// print("Read n = \(n), line = \(line)")

