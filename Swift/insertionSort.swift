import Foundation

// var nArray = [3, 2, 5, 10, 4, 0]
var nArray = [3, 7, 4, 1]
print("Unsorted:\t \(nArray)")

for ( var i = 1; i < nArray.count; ++i ) {
  let n = nArray[i]
  var j = i
  while( j > 0 && nArray[j] < nArray[j-1] ) {
    swap(&nArray[j], &nArray[j-1])
    j = j - 1
    print("...:\t\t \(nArray)")
  }
}

