//
//  main.swift
//  maxMin
//
//  Created by slava bily on 27.10.2021.
//

import Foundation

func maxMin(k: Int, arr: [Int]) -> Int {
    
    for i in 0..<arr.count - k + 1 {
        for j in 1...2 {
            var tempArr = [Int]()
            tempArr.append(arr[i])
            for _ in 1..<k {
                tempArr.append(arr[i + j])
                print(tempArr)
            }
        }
    }
    return 0
}

maxMin(k: 2, arr: [1,4,7,2])

