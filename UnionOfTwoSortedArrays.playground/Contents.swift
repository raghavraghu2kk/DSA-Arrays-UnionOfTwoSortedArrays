import UIKit

func unionOfTwoArrays(_ arr1: inout [Int],_ arr2: inout [Int]) -> [Int] {
    arr1.sort()
    arr2.sort()
    var n1 = arr1.count
    var n2 = arr2.count
    var union : [Int] = []
    var i = 0
    var j = 0
    while(i<n1 && j<n2){
        if(arr1[i] <= arr2[j]){
            if(union.count == 0 || union.last != arr1[i]){
                union.append(arr1[i])
            }
            i += 1
        } else {
            if(union.count == 0 || union.last != arr2[j]){
                union.append(arr2[j])
            }
            j += 1
        }
    }
    while(i<n1){
        if(union.count == 0 || union.last != arr1[i]){
            union.append(arr1[i])
        }
        i += 1
    }
    while(j<n2){
        if(union.count == 0 || union.last != arr2[j]){
            union.append(arr2[j])
        }
        j += 1
    }
    
    return union
}

var a1 = [1,2,3,4,4,5,11]
var a2 = [1,2,3,4,5,6,7]

unionOfTwoArrays(&a1, &a2)
print(unionOfTwoArrays(&a2, &a1))
