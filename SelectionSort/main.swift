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

for i in 0 ..< array.count - 1 {
    var k = i;
    for j in i + 1 ..< array.count {
        if(array[j] < array[k]) {
            k = j
        }
    }

    swap(arrays: &array, firstIndex: i, secondIndex: k)
}
print(array)
