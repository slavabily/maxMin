//
//  main.swift
//  maxMin
//
//  Created by slava bily on 27.10.2021.
//

import Foundation

func maxMin(k: Int, arr: [Int]) -> Int {
    
    var testArr = [Int]()
    
    for i in 0..<k {  
        testArr.append(arr[i])
    }
    print(testArr)
    
    let unfairness = testArr.max()! - testArr.min()!
    print(unfairness)
     
    return 0
}

maxMin(k: 2, arr: [1,4,7,2])

