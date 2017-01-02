import Foundation
func winPercentage(BaseballTeam team: String, withWins wins: Int, andLoses loses: Int) -> Double {
    return Double(wins) / Double(wins + loses)
}

var per = winPercentage(BaseballTeam: "Red Sox", withWins: 99, andLoses: 63)
print(per)

