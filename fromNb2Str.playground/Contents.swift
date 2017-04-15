import UIKit

func fromNb2Str(_ n: Int, _ sys: [Int]) -> String {

    var i = 0
    var j = 1
    var result : String = ""
    var newArray = [Int]()
    var aBoolean = true

    func gcd(_ a: Int, _ b: Int) -> Int {
        let r = a % b
        if r != 0 {
            return gcd(b, r)
        } else {
            return b
        }
    }

while aBoolean {
    newArray.append(gcd(sys[i],sys[j]))
    
    if  j < (sys.count - 1 ) {
        j += 1
    } else {
        i += 1
        j = i + 1
    }
    if sys[i] == sys[(sys.count-2)] && sys[j] == sys[sys.count-1] {
        newArray.append(gcd(sys[i],sys[j]))
        aBoolean = false
    }
}

    if sys.reduce(1,*) > n && newArray.reduce(1,*) == 1 {
        
        for l in sys.map({ n % $0 }) {
            result += "-\(l)-"
        }

    } else {
        result = "Not applicable"
    }
    return result
}

fromNb2Str(779, [8,7,5,3])









