import UIKit

// Created list of random Ints

var numbers: [Int] = []
for _ in 0..<5 {
    
    numbers.append(Int.random(in: 0...20))
    
}

var sortedList: [Int] = []

for number in numbers {
    
    let sortedListSize = sortedList.count
    for index in 0..<sortedList.count {
        let sortedListNumber = sortedList[index]
        if number < sortedListNumber {
            sortedList.insert(number, at: index)
            break
        }
    }
    
    if sortedListSize == sortedList.count {
        sortedList.append(number)
    }
}

print(numbers)
print(sortedList)
