/**
 * HR: 30 Days -- Day 20
 * -swinful
 **/

import Foundation

let sentence    = readLine()!
let delimiters  = "! [ , ? . \\ _ ' @ + ]"
let setOfDelims = NSCharacterSet(charactersInString: delimiters))
let sArray      = sentence.componentsSeparatedByCharactersInSet(setOfDelims.filter { $0 != "" }

print(sArray.count)
sArray.forEach{print($0)}

