import Foundation
func getName() ->String? {
    return nil
}

func getTeam2(id: Int) -> (team:String, wins:Int, percent:Double)? {
    if id == 1 {
    return ("Red Sox", 99, 0.611)
    }
    return nil
}


func getTeam() -> (team:String, wins:Int, percent:Double?) {
        let retTuple: (String, Int, Double?) = ("Red Sox", 99, nil)
        return retTuple
}
