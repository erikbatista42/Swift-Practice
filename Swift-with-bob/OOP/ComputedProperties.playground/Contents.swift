/*:
 
 # Computed Property
 
 Problem: Do we have to make function all the time to calculate something?
 
 */

func getDiameter(radius: Double) -> Double {
    return radius * 2
}

getDiameter(radius: 10) // return 20


// Introducing Computed Property
// computed = calculated

//:Getable Property - A variable that can only be read. You can't modify it.

class NumberClass {
    var readableNumber: Double { // have to define type when declaring computed vars
        get {
            return 666
        }
    }
    
    var readableNum: Double {
        return 789
    }
}

//NumberClass().readableNum = 555 // Produces error because we cannot change a gettable var

//: Settable Property - allows you to change properties

var radius: Double = 10

var diameter: Double {
    get {
        return radius * 2
    }
    
    set {
        radius = newValue / 2
    }
}

diameter = 30
diameter = 50

// Finding Area
import Foundation

var side:Double = 100.0
var area: Double {
    get {
        return side * side
    }
    
    set {
        side = sqrt(newValue)
    }
}

area = 9
side

//: Application scenarios
// - Grabbing and storing data in server. // Want to make data unchangeable

// Good to use when messing around with properties that interact with eachother like the area variable above

// Preventing others from manipulating your code

// *UIKit will give you errors! They will say "This is a get-only property. You can't change it" - Apple Prevent us from messing around with their code

var score: Int = 20 {
    
    willSet(newScore) {
        print("Your score is going to be \(newScore)")
    }
    
    didSet(oldScore) {
        print("Your old score was: \(oldScore). Now it's \(score)")
    }
}

score = 25
