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

func compareComputerNumbers(withUserNumbers userNumbers: [Int]) -> [Int] {
    var ball = 0
    var strike = 0
    
    for i in 0...2 {
        strike = (computerNumbers[i] == userNumbers[i] ? strike + 1 : strike)
    }
    
    for userNumber in userNumbers {
        ball = (computerNumbers.contains(userNumber)) ? ball + 1 : ball
    }
    
    ball -= strike
    
    return [ball, strike]
}
