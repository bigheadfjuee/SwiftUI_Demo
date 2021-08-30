//
//  MyStringExtnsion.swift
//  SwiftUI-Demo1
//
//  Created by Tony Lee on 2021/8/30.
//

import Foundation

extension String {
  var length: Int {
      return count
  }

  subscript (i: Int) -> String {
      return self[i ..< i + 1]
  }

  func substring(fromIndex: Int) -> String {
      return self[min(fromIndex, length) ..< length]
  }

  func substring(toIndex: Int) -> String {
      return self[0 ..< max(0, toIndex)]
  }

  subscript (r: Range<Int>) -> String {
      let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                          upper: min(length, max(0, r.upperBound))))
      let start = index(startIndex, offsetBy: range.lowerBound)
      let end = index(start, offsetBy: range.upperBound - range.lowerBound)
      return String(self[start ..< end])
  }
  
  func myReverse () -> String{
    var str = ""
    for index in stride(from: self.count, through: 0, by: -1)
    {
      str = str + self[index]
    }
    return str
  }
  
  func reversedString() -> String {
    var array = Array<Character>(self)
    /*
    let n = self.count
    for i in 0..<n/2 {  array.swapAt(i, n-1-i) }
      */
 // Two-pointer Techniqure
    var i = 0
    var j = self.count - 1
    while i < j {
      array.swapAt(i, j)
      i += 1
      j -= 1
    }
    
    return String(array)
  }
}
