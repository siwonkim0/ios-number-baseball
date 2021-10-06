import Foundation

let computerNumbers = generateRandomNumbers()
var chancesLeft = 9

var userInputNumbers: [Int] = generateRandomNumbers()

func generateRandomNumbers() -> [Int] {
    var result: [Int] = []

    while result.count < 3 {
        let randomNumber = Int.random(in: 0...9)
        
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    
    return result
}

print(generateRandomNumbers())
