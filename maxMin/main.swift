//
//  main.swift
//  maxMin
//
//  Created by slava bily on 27.10.2021.
//

import Foundation

func maxMin(k: Int, arr: [Int]) -> Int {
    var assArr = [[Int]]()
    for n in 0..<arr.count {
        for i in 0..<arr.count {
            var temp = [Int]()
            temp.append(arr[n])
            for j in (i + 1)..<arr.count {
                if temp.count < k {
                    temp.append(arr[j])
                }
            }
            var t1 = Array(Set(temp))
            t1.sort()
            if t1.count == k {
                assArr.append(t1)
            }
        }
    }
    print(assArr)
    var essArr = [Int]()
    for i in 0..<assArr.count {
        let unfair = assArr[i].max()! - assArr[i].min()!
        essArr.append(unfair)
    }
    print(essArr)
    print(essArr.min()!)
    return essArr.min()!
}

maxMin(k: 3, arr: [10,100,300,200,1000,20,30])

