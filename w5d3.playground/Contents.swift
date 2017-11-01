//
// Algorithm for printing a pyramid of stars, i.e.
//
// *
// * *
// * * *
// * *
// *
//

func printStars(numStars: Int) -> Void {
    var line = ""
    for _ in 0..<numStars {
        line += "* "
    }
    print("\(line)")
}

func printPyramid(maxStars: Int) -> Void {
    for i in 0..<maxStars {
        printStars(numStars: i)
    }

    for i in stride(from: maxStars, to: 0, by: -1) {
        printStars(numStars: i)
    }
}

var input = 14
printPyramid(maxStars: input)


//
// Algorithm for finding peaks in an array of positive integers
//
// I.e. for the array: [  8,  2,  9,  1,  6,  3,  0,  4,  1,  7,  3,  5 ]
// The peaks are at indices 2, 4, 7, 9
//

var inputArray = [  8,  2,  9,  1,  6,  3,  0,  4,  1,  7,  3,  5 ]

for i in 1..<inputArray.count-1 {
    if inputArray[i] > inputArray[i-1] && inputArray[i] > inputArray[i+1] {
        print("\(i)")
    }
}

