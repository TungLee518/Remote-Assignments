/*:
## Part 1: Git & GitHub
### 2.

- git status: check if there is any edited file, and whether they are modified.
- git add: add files that are unmodified to staging area when these files are ready to commit.
- git commit: save the changes to the repo. Use it when we want to save versions of files at different time.
- git log: check your commits, including time, author, commit messages...
- git branch: check the branches I own and see how they connect to each others.
- git push [ repo_name ] [ branch_name ]: push the specified branch to the remote repo when I want to share files to others.
- git remote -v: list all the remotes associate the current repo when I want to check which remotes i can access.
- fork: copy a repo on github to my own user space, then I can access this repo, and push commits to this copied repo. Finally, I can create pull request to the original repo owner.

 ### 3.
 Use git init to create a local repo at specific path. Create a new repo on the Github. Copy the http URL of this repo on Github, use git remote add origin to add this reomte to the existing repo. Then use git push --set-upstream origin master to upload files to Github. But I need to first add a new personal access token to have the authority to push files.
 
## Part 2: Basic
### 1.
let stores value as a constant which is immutable, and var stores value as a variable which can be changed.

### 2.
*/

let Pi: Double = 3.14159

/*: Because Pi is a constant parameter when calculate the circumference, so I should use let to store it as we cannot change it. */

//: ### 3.
let x: Int = 253
let y: Int = 672
let average: Double = Double (x + y) / 2

/*: ### 4.
- set the average as a Double constant.
- 10/3 is a divisor which is an Interger, and 10.0/3.0 is a Double which is the exact value of 10/3.
*/

//: ### 5.
let a = 10
let b = 3
let remainder = 10 % 3

//: ### 6.
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

/*: ### 7.
 Type Inference in Swif can automaticlly recognize the data type even if I did not declare the type of a variable or constant.
 */

//: ### 8.
/*: phoneNumber is assign as an Interger variable, so I can't reassign it by a non-interger */
//var phoneNumber = 0987654321
//phoneNumber = "Hello world."

//: ### 9.
var salary = 22000
salary += 28000

//: ### 10.
let num1 = 12
let num2 = 13
let num3 = 13
num1 == num2
num2 == num3

//: ## Part 3: Collection
//: ### 1.
var myFriends: [String] = []

//: ### 2.
myFriends += ["Ian", "Bomi", "Kevin"]

//: ### 3.
myFriends.append("Michael")

//: ### 4.
myFriends.removeAll(where: {$0.contains("Kevin")})

//: ### 5.
for friend in myFriends {
    print(friend)
}

//: ### 6.
let myFriendLen = myFriends.count
//: Because myFriends only contain 3 elements, myFriends[5] will get an error.

//: ### 7.
myFriends.first

//: ### 8.
myFriends.last

//: ### 9.
var myCountryNumber: [String: Int] = [:]

//: ### 10.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
print(myCountryNumber)

//: ### 11.
myCountryNumber["GB"] = 0
print(myCountryNumber)

//: ### 12.
var emptyDictionary: [String: Int] = [:]

//: ### 13.
myCountryNumber["US"] = nil
print(myCountryNumber)


//: ## Part 4: Control Flow
//: ### 1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in 1...3 {
    print(lottoNumbers[lottoNumbers.count - i])
}
//: ### 2.
for i in 1...lottoNumbers.count {
    print(lottoNumbers[lottoNumbers.count - i])
}
for i in 0..<lottoNumbers.count where i % 2 == 0{
    print(lottoNumbers[i])
}

//: ### 3.
var countLotto = lottoNumbers.count - 1
while countLotto >= 0 {
    print(lottoNumbers[countLotto])
    countLotto -= 1
}
while countLotto < lottoNumbers.count {
    if countLotto % 2 == 0 {
        print(lottoNumbers[countLotto])
    }
    countLotto += 1
}

//: ### 4.
countLotto -= 1
repeat {
    print(lottoNumbers[countLotto])
    countLotto -= 1
} while countLotto >= 0
repeat {
    if countLotto % 2 == 0 {
        print(lottoNumbers[countLotto])
    }
    countLotto += 1
} while countLotto < lottoNumbers.count

//: ### 5.
//: "repeat" will execute the body code first then check if the while conditions fits, while "while" will first check the conditions.
//: "repeat" will still runs if the while condition is FALSE.

//: ### 6.
var isRaining: Bool = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//: ### 7.
var jobNumber = 1
switch jobNumber{
    case 1: "Member"
    case 2: "Team Leader"
    case 3: "Manager"
    case 4: "Director"
default:
    "We don't have this job"
}
    

//: ## Part 5: Function

//: ### 1.
//: func birthday( ) -> String { } will return a string
//:
//: func payment( ) -> Double { } will return a Double

//: ### 2.
func multiply(a: Int, b: Int = 10) {
    print(a * b)
}
multiply(a: 10)
multiply(a: 12, b: 3)

//: ### 3.
//: Argument label is optional. It is define before parameter name in order to make the function more readable. Function will show argument label only when we call it.
//:
//: Parameter name is required. It will be used in the body of the function.


//: ### 4.
func greet(person name: String) -> String {
    "Hello, " + name
}
let ans = greet(person: "Luke")
print(ans)
