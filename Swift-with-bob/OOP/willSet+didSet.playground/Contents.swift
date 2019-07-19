import UIKit
import Foundation
import PlaygroundSupport



var myGrade = 80 {
    willSet(newGrade) { // called just before the value is stored
//        print("About to change your grade to \(newGrade)")
    }
    
    didSet(oldGrade) { // called right after the new value is stored
//        print("Your old grade was \(oldGrade). But now it's \(myGrade)")
    }
}
myGrade = 100


//: Step counter

var totalSteps = 20 {
    willSet(newTotalSteps) {
//        print("About to set totalSteps to \(newTotalSteps)")
    }
    
    didSet(oldTotalSteps) {
        if totalSteps > oldTotalSteps {
//            print("Added \(totalSteps - oldTotalSteps) steps")
        }
    }
}

totalSteps = 15

//: Application
var isUserLoggedIn: Bool = false {
    willSet(newValue) {
        print("The user has tried something")
    }
    
    didSet {
        if isUserLoggedIn {
            print("The user has switched from \(oldValue) to \(isUserLoggedIn)")
            // background color
            // Animation
            // pop up
            // all kinds of stuff
        }
    }
}

isUserLoggedIn = true
isUserLoggedIn = false
