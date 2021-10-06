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
    
    print("임의의 수 : \(userNumbers[0]) \(userNumbers[1]) \(userNumbers[2])")
    print("남은 기회 : \(chancesLeft)")
    return [ball, strike]
    
}


while chancesLeft > 0 {
    let result = compareComputerNumbers(withUserNumbers: generateRandomNumbers())
    print("\(result[1]) 스트라이크, \(result[0]) 볼 ")
    chancesLeft -= 1
}
