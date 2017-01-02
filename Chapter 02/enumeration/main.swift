import Foundation
enum Planets {
    case Mercury, Venus, Earth, Mars, Jupiter
    case Saturn, Uranus, Neptune
}


var planetWeLiveOn = Planets.Earth
var furthestPlanet = Planets.Neptune

planetWeLiveOn = .Mars

if planetWeLiveOn == .Mars {
    print("Mars it is")
}


switch planetWeLiveOn {
    case .Mercury:
    print("We live on Mercury, it is very hot!")
    case .Venus:
    print("We live on Venus, it is very hot!")
    case .Earth:
        print("We live on Earth, just right")
    case .Mars:
        print("We live on Mars, a little cold")
    default:
        print("Where do we live?")
    }


enum Devices: String {
            case iPod = "iPod"
            case iPhone = "iPhone"
            case iPad = "iPad"
}
print("We are using a \(Devices.iPad.rawValue)")

