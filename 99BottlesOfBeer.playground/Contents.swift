import UIKit

func beerSong(numOfBottles: Int) -> String {
    var lyrics: String = ""
    let lastLine = "\nGo to the store and buy some more, 99 bottles of beer on the wall."
    
    for number in (1...numOfBottles).reversed() {
        var firstLine = ""
        if number <= 1 {
            firstLine = "\n\(number) bottle of beer on the wall, \(number) bottle of beer.\n"
        } else {
            firstLine = "\n\(number) bottles of beer on the wall, \(number) bottle of beers.\n"
        }
        
        let decreasedNumber = number - 1
        
        var secondLine = ""
        
        if decreasedNumber == 0 {
            secondLine = "Take one down pass it around, no more bottles of beer on the wall.\n \nNo more bottles of beer on the wall, no more bottles of beer."
        } else {
            secondLine = "Take one down pass it around, \(decreasedNumber) bottle of beers on the wall.\n"
        }
        lyrics += firstLine + secondLine
        
    }
    
    lyrics += lastLine
    
    
    return lyrics
}

print(beerSong(numOfBottles: 99))
