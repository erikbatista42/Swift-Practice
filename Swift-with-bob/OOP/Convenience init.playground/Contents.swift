/*:
  
 # (OOP)
  
 Convinience Init
  
*/
class Human {
    var name: String?
    init(name: String) {
        self.name = name
    }
    // Convinience Init initializes the designated init method
    convenience init() {
        self.init(name: "Bob the developer")
        
    }
}

let bob = Human(name: "Bob")
let bobby = Human()
bobby.name
 
//: Real Life Situation
import UIKit

let randomColor = UIColor(red: 255/80, green: 255/80, blue: 255/80, alpha: 1)

extension UIColor {
    convenience init(r: Float, g: Float, b: Float) {
        self.init(red: CGFloat(r/80), green: CGFloat(g/80), blue: CGFloat(b/80), alpha: 1)
    }
}

let favColor = UIColor(r: 80, g: 85, b: 3)

//: Application real life scenario:
// - Useful for quick initialization for open source projects
// - Custom convenience like UIKit
