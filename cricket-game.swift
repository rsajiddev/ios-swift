import Foundation
// swift cricket-game.swift
class CricketGame {
    func gameStart() {
        print("Welcome to the cricket game")
        displayTeams()
        
        let team = chooseTeam()
        let tossResult = tossCall(team: team)
        let decision = batOrBowl()
        let (opener1, opener2) = chooseOpeners()
        let bowler = chooseBowler()
        let overs = chooseOvers()
        let totalScore = calculateScore(overs: overs)
        
        displayGameSummary(team: team, tossResult: tossResult, decision: decision, opener1: opener1, opener2: opener2, bowler: bowler, score: totalScore)
    }
    
    func displayTeams() {
        print("Team 1 Players Jersey Numbers:")
        for t1Players in 1...11 {
            print(t1Players, terminator: " ")
        }
        print("\nTeam 2 Players Jersey Numbers:")
        for t2Players in 12...22 {
            print(t2Players, terminator: " ")
        }
        print()
    }
    
    func chooseTeam() -> String {
        var teamChoice: String?
        repeat {
            print("\nWhich team do you want to choose for the toss (Team 1 or Team 2)?")
            teamChoice = readLine()
            if let choice = teamChoice, choice.lowercased() == "team 1" || choice.lowercased() == "team 2" {
                print("\(choice) will choose head or tail for the toss.")
                return choice
            } else {
                print("Invalid input. Please choose 'Team 1' or 'Team 2'.")
            }
        } while true
    }
    
    func tossCall(team: String) -> String {
        var tossCall: String?
        repeat {
            print("Call the toss (head or tail):")
            tossCall = readLine()
            if let call = tossCall, call.lowercased() == "head" || call.lowercased() == "tail" {
                print("It's \(call). \(team) wins the toss!")
                return call
            } else {
                print("Invalid input. Please choose 'head' or 'tail'.")
            }
        } while true
    }
    
    func batOrBowl() -> String {
        var decision: String?
        repeat {
            print("What do you want to do first (bat or bowl)?")
            decision = readLine()
            if let choice = decision, choice.lowercased() == "bat" || choice.lowercased() == "bowl" {
                print("You chose to \(choice) first.")
                return choice
            } else {
                print("Invalid input. Please choose 'bat' or 'bowl'.")
            }
        } while true
    }
    
    func chooseOpeners() -> (Int, Int) {
        var opener1: Int?
        repeat {
            print("Choose the first opener (1-11):")
            if let input = readLine(), let number = Int(input), number >= 1 && number <= 11 {
                opener1 = number
                print("Player with jersey number \(number) is coming on the pitch.")
                break
            } else {
                print("Invalid input. Please choose a valid jersey number between 1 and 11.")
            }
        } while true
        
        var opener2: Int?
        repeat {
            print("Choose the second opener with a different jersey number (1-11):")
            if let input = readLine(), let number = Int(input), number >= 1 && number <= 11, number != opener1 {
                opener2 = number
                print("Player with jersey number \(number) is coming on the pitch.")
                break
            } else {
                print("Invalid input. Please choose a valid and different jersey number between 1 and 11.")
            }
        } while true
        
        return (opener1!, opener2!)
    }
    
    func chooseBowler() -> Int {
        var bowler: Int?
        repeat {
            print("Choose a bowler (12-22):")
            if let input = readLine(), let number = Int(input), number >= 12 && number <= 22 {
                bowler = number
                print("Player with jersey number \(number) is the bowler.")
                break
            } else {
                print("Invalid input. Please choose a valid jersey number between 12 and 22.")
            }
        } while true
        return bowler!
    }
    
    func chooseOvers() -> Int {
        var overs: Int?
        repeat {
            print("How many overs do you want to play?")
            if let input = readLine(), let number = Int(input), number > 0 {
                overs = number
                print("You chose a \(number)-over match.")
                break
            } else {
                print("Invalid input. Please enter a valid positive integer.")
            }
        } while true
        return overs!
    }
    
    func calculateScore(overs: Int) -> Int {
        var totalScore = 0
        for i in 1...overs {
            print("Over \(i):")
            var runs: Int?
            repeat {
                print("Enter the runs scored in this over:")
                if let input = readLine(), let number = Int(input), number >= 0 {
                    runs = number
                    print("Runs scored in this over: \(number)")
                    totalScore += number
                    break
                } else {
                    print("Invalid input. Please enter a valid non-negative integer.")
                }
            } while true
        }
        return totalScore
    }
    
    func displayGameSummary(team: String, tossResult: String, decision: String, opener1: Int, opener2: Int, bowler: Int, score: Int) {
        print("\n--- Game Summary ---")
        print("Team: \(team)")
        print("Toss Result: \(tossResult)")
        print("Decision: \(decision)")
        print("Openers: \(opener1) and \(opener2)")
        print("Bowler: \(bowler)")
        print("Final Score: \(score)")
        print("---------------------")
    }
}

CricketGame().gameStart()
