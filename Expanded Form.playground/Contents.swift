import UIKit

// Decompose the number so it result on a Expanded Form
// Example : 12 = 10 + 2 ; 42 = 40 + 2 ; 70304 = 70 000 + 300 + 4


func expandedForm(_ num: Int) -> String {

    var num = "100504"
    var counter = num.characters.count - 1
    var mathZero : Double
    var withZerosReally : String
    var cool : String = ""
    var container = [String]()
    var result : String = ""

    for i in num.characters{
        if Int(String(i)) != 0 {
            mathZero = Double(String(i))! * pow(10.0, Double(counter))
            withZerosReally = String(Int(mathZero))
            container.append(withZerosReally)
            result = container.joined(separator: " + ")
            counter -= 1
        } else {
            counter -= 1
        }
    }
    result = "\(num) = \(result)"
    return result
}

print(expandedForm(4324))


