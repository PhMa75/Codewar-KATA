//Kata exercice from www.codewars.com
//
//

import UIKit

func toNATO(_ words  : String) -> String {

    // Variables declarations
    var words : String = words
    var formattedName = [String]()
    let alphabet = [ "a" : "Alfa" , "b" : "Bravo", "c" : "Charlie",
                     "d" : "Delta", "e" : "Echo", "f" : "Foxtrot",
                     "g" : "Golf", "h" : "Hotel", "i" : "India",
                     "j" : "Juliett", "k" : "Kilo", "l" : "Lima",
                     "m" : "Mike", "n" : "November", "o" : "Oscar",
                     "p" : "Papa", "q" : "Quebec", "r" : "Romeo",
                     "s" : "Sierra", "t" : "Tango", "u" : "Uniform",
                     "v" : "Victor", "w" : "Whiskey", "x" : "Xray",
                     "y" : "Yankee", "z" : "Zulu", " " : ""]
    var retrievedLetter : String
    var newString : String = ""
    var i : Int = 0

    //Converting "words" variable to Array
    for i in words.characters {
        formattedName.append(String(i))
    }
    
    //Removing the space from "words" variable
    formattedName = formattedName.filter(){$0 != " "}
    
    // Lowercasing any letter from "words"
    while i < formattedName.count{
        formattedName[i] = formattedName[i].lowercased()
        i += 1
    }
    i = 0
    
    //Assembling letter by letter the NATO
    while i < formattedName.count {
        retrievedLetter = formattedName[i]
        newString += alphabet[retrievedLetter]! + " "
        i += 1
    }
    return newString
}

print(toNATO("if you can read"))

//alphabet["p"]?.characters[(alphabet["p"]?.startIndex)!]
//alphabet["p"]?.characters






