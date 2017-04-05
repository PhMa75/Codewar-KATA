import UIKit

// GOAL TO ACHIEVE BELOW

//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"

func accum(_ s : String) -> String{

    var someIndex : Int = 1
    var aString : String = ""
    var converting : String
    var capitalize : String
    
    for i in s.characters {
        //multiplying each char by his index in the String
        aString = String(repeating : String(i), count: someIndex)
        converting = String(i)
        
        //Capitalizing the first letter of each loop round
        capitalize = String(converting.characters.first!).uppercased()
        print(capitalize , terminator : "")
        aString.characters.popLast()

        if i == s.characters.last {
            aString += ""
        } else {
            aString += "-"
        }
    
        print(aString, terminator : "")
        someIndex += 1
    }
    return aString
}

accum("RqaEzty")