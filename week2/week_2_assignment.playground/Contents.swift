//: # Remote Learning Assignment - Week 2
//: ## Part 1: Object-Oriented Swift
//: ### 1.
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender = .undefined
//    init(gender: Gender) {
//        self.gender = gender
//    }
    func eat() {
        print("I eat everything!")
    }
}

//: ### 2.
class Elephant: Animal {
    override func eat() {
        print("I eat bananas.")
    }
}
class Tiger: Animal {
    override func eat() {
        print("I eat meat.")
    }
}
class Horse: Animal {
    override func eat() {
        print("I eat grass.")
    }
}

//: ### 3.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())
let tiger = Tiger()
let elephant = Elephant()
let horse = Horse()
horse.gender = .female
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//: ### 4.
/*:
 - Structures stores data as value type. Datas are immutable when copy, they are independent. Cannot be inheritanted.
 - Class stores data as reference type. Different variables with same class will share same datas. Support inheritance.
 */

//: ### 5.
//: Initializer can set the initial value of some parameters in struct or class, which will make the user add the initial value when the struct or the class are called. It can also set a default value to the initialzer, so the user don't need to add any value when call a struct or class.

//: ### 6.
/*:
 - Reference type of instance will share the same data when copied. Change the value of one instance will also change other copied instances' value.
 - Value type of instances will be independent when copied.
 */

//: ### 7.
/*:
 Instances are created by a type such as structure or class.
 - An instance method needs to be called on an instance.
 - A type method can only be called with a type itself.
 */

//: ### 8.
//: Self in instance method is used when I want to call a property of the instance itself.
//: In type method, self refers to the type itself.


//: ## Part 2: Enumerations and Optionals in Swift
//: ### 1.
enum Gasoline: String {
    case nineTwo = "92"
    case nineFive = "95"
    case nineEight = "98"
    case diesel = "diesel"
    
    func getPrice() -> Double {
        switch self {
        case .nineTwo: return 100
        case .nineFive: return 120
        case .nineEight: return 130
        case .diesel: return 150
        }
    }
}

//: Enum associate values can attach additional values to each case I define. For example:
enum GasolinePrice {
    case nineTwo(price: Int)
    case nineFive(price: Int)
    case nineEight(price: Int)
    case diesel(price: Int)
}
//: I can add price to each type of gasoline when I use it.

//: ### 2.
class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}
class People {
    let pet: Pet?
    init(pet: Pet?) {
        self.pet = pet
    }
}

// guard let
let May =  People(pet: Pet(name: "May"))
func petName(people: People) {
    guard let name = people.pet?.name else {
        return
    }
    print("\(name)")
}

petName(people: May)

// if let
let June = People(pet: Pet(name: "June"))
// let June = People(pet: nil)
if let name = June.pet?.name {
    print("\(name)")
} else { print("No pet") }


//: ## Part 3: Protocol in Swift
struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    func arrestCriminals() {
        print("\(name) arrested someone.")
    }
}

protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
        print("Fixing.")
    }
}

let steven = Person(name: "Steven", toolMan: Engineer())
steven.toolMan.fixComputer()
steven.arrestCriminals()


//: ## Part 4: Error Handling in Swift
enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

try GuessNumberGame().guess(number: 10)
try GuessNumberGame().guess(number: 20)
try GuessNumberGame().guess(number: 10)


