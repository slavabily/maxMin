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
    
    var estArr = [[Int]]()
    var unfArr = [Int]()
    
    
    for _ in 0..<arr.count - 1 {
        
        first = tempArr.removeFirst()
        
        for i in 0..<tempArr.count {
            
            var compArr = [Int]()
            compArr.append(first)
            
            for _ in 1..<k {
                
                compArr.append(tempArr[i])
//                print("\(compArr)")
                
                estArr.append(compArr)
            }
        }
    }
    print(estArr)
    
    for i in 0..<estArr.count {
        
        let unfairness = estArr[i].max()! - estArr[i].min()!
        
        unfArr.append(unfairness)
    }
    print(unfArr)
    print(unfArr.min()!)
    
    return unfArr.min()!
}

maxMin(k: 2, arr: [1,4,7,2])

