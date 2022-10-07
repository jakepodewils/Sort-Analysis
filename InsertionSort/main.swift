import Foundation
var array = [String]();

// creating the swapping function, and the parameters for how the code will swap words inside of the array, using a temporary variable

func swap(integers: inout [String], firstIndex:Int, secondIndex:Int) {
    let temp = integers[secondIndex]
    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = temp
}

// grab the words from the text files prior to sorting

while let line = readLine() {
    if(line.count == 0) {break;}
    array.append(line)
}

//

for i in 1..<array.count {
    var j = i

    while j > 0 && array[j] < array[j - 1] {
        swap(integers: &array, firstIndex: j-1, secondIndex: j)
        j -= 1
    }
}
print(array)
print("5")
