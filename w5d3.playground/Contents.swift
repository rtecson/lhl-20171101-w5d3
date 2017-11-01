//
// Algorithm for printing a pyramid of stars, i.e.
//
// *
// * *
// * * *
// * *
// *
//

func printLineOfStars(numberOfStars: Int) -> Void {
    var line = ""
    for _ in 0...numberOfStars {
        line += "* "
    }
    print("\(line)")
}

func printPyramidOfStars(maxNumberOfStars: Int) -> Void {
    for i in 0..<(maxNumberOfStars-1) {
        printLineOfStars(numberOfStars: i)
    }

    for i in stride(from: (maxNumberOfStars-1), through: 0, by: -1) {
        printLineOfStars(numberOfStars: i)
    }
}

printPyramidOfStars(maxNumberOfStars: 3)


//
// Algorithm for finding peaks in an array of positive integers
//
// I.e. for the array: [  8,  2,  9,  1,  6,  3,  0,  4,  1,  7,  3,  5 ]
// The peaks are at indices 2, 4, 7, 9
//

func findPeakIndices(inputArray: [Int]) -> [Int] {
    var descending: Bool? = nil
    var peakIndices = [Int]()
    
    for i in 1..<inputArray.count {
        if inputArray[i] > inputArray[i-1] {
            descending = false
        }
        else {
            if descending == false {
                peakIndices.append(i-1)
            }
            descending = true
        }
    }
    
    return peakIndices
}

let inputArray = [  8,  2,  9,  1,  6,  3,  0,  4,  1,  7,  3,  5 ]
let peakIndices = findPeakIndices(inputArray: inputArray)
print("Peak indices = \(peakIndices)")
