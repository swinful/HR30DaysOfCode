import Foundation

func embeddedURLs(text: String) -> [NSURL] {
  return text
    .componentsSeparatedByString(" ")
    .filter{ $0.hasPrefix("http://") }
    .map{ NSURL(string: $0)! }
}

let result = embeddedURLs("This text contains a link to http://www.apple.com and other stuff.")
print(result)

