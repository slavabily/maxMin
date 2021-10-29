//
//  main.swift
//  maxMin
//
//  Created by slava bily on 27.10.2021.
//

import Foundation

func maxMin(k: Int, arr: [Int]) -> Int {
    
    var tempArr = arr
    var first = Int()
    
    for _ in 0..<arr.count - 1 {
        
        first = tempArr.removeFirst()
        print("\n\(tempArr)")
        
        for i in 0..<tempArr.count {
            
            var compArr = [Int]()
            compArr.append(first)
            
            for _ in 1..<k {
                
                compArr.append(tempArr[i])
                print("\(compArr)")
            } 
        }
    }
    return 0
}

maxMin(k: 2, arr: [1,4,7,2])

