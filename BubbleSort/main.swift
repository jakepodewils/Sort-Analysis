import Foundation

var array = [String]();

while let line = readLine() {
    if(line.count == 0) {break;}
    array.append(line)
}

func swap(arrays: inout [String], firstIndex:Int, secondIndex:Int) {
    let temp = arrays[secondIndex]
    arrays[secondIndex] = arrays[firstIndex]
    arrays[firstIndex] = temp
}

for i in 0..<array.count {
    for j in 1..<array.count - i {
        if(array[j] < array[j-1]) {
            swap(arrays: &array, firstIndex:j, secondIndex:j-1)
        }
    }
}
print(array)
