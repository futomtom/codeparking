//: Playground - noun: a place where people can play

import Foundation


let array1 = [2,1,34,5,654,52,23,422,11,34,3]
let array2 = [2,1,22,5,654,33,33,422,11,34,2]

var hashTable:[AnyHashable:Bool] = [:]
var commonSet = Set<Int>()
for item  in array1 {
    hashTable[item] = true
}

for item in array2 {
    
    if hashTable[item] == true {
        commonSet.insert(item)
    }
}

    for item in commonSet {
        print(item)
    }

