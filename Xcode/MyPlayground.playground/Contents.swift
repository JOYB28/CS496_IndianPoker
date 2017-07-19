//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"

let maxSpeed:Int = 200

//maxSpeed = 100

var currentSpeed:Int = 100

currentSpeed += 10
currentSpeed += Int(20.5)

let name:String = "Yoonseo"

var greeting:String = "Hello"

greeting += " " + name

let characters = name.characters
let count = characters.count

let url = "www.codershigh.com"
let hasProtocol = url.hasPrefix("http://")

print("\(name)")

let intMax = Int.max
let UintMax = UInt.max

let intMin = Int.min
let UintMin = UInt.min

let pi = 3.14
let divider = 2
let halfPi = 3.14/Double(divider)

let time1 = (9,0,48)
let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)
time2.h

let duration = (time1, time2)

var meetingRooms:Array<String> = ["AA", "BB", "CC"]
var groupds:[Int] = [1, 2, 3, 4]
meetingRooms += ["DD"]
meetingRooms.insert("a", at: 1)

var roomCapacity:[String:Int] = ["AA":2, "BB":3, "CC":1]

roomCapacity["DD"] = 40
roomCapacity["AA"]

let roomNames = roomCapacity.keys
let capacities = roomCapacity.values

let roomNames1 = [String](roomCapacity.keys)
let capacities1 = [Int](roomCapacity.values)

//순서 없는 collection : set
let subway2 :Set = ["시청", "을지로입구","을지로3가","동대문"]

let heros :Set = ["프린스", "마녀", "해골 군대", "고블린 통"]

let oppHeros = ["자이언트 해골", "고블린 통", "대형석궁", "프린스"]

// 상대와 겹치는 영웅들로 이뤄진 set을 완성하세요
let intersectHeros :Set = heros.intersection(oppHeros)

typealias ShopingItem = (name:String, amount:Int)
let cart :ShopingItem = ShopingItem("beer", 1)

switch cart {
case ("beer", 0...3) : //맥주 3병 이하
    print("Guide to small item counter")
case ("beer", 51...100) : //맥주 51병이상 100병 까지
    print("Call manager")
case ("beer", let amount) where amount > 100 : //맥주 100병 초과
print("Call police")
default: //나머지(맥주 4병 이상 50병 이하)
    print("Make wait in line")
}
*/

var title : String = "Storyboard Prototyping"
var ratings : [Double]? = nil
var supportURL : String! = nil

supportURL = "www.yoonseo.com"
ratings = [4.5, 3.0, 5.0, 2.5]

func ratingRecord (history:[Double]) -> (average:Double, min:Double, max : Double) {
    
    var sum = 0.0, min = history[0], max = history[0]
    
    for value in history {
        if min > value { min = value }
        if max < value { max = value }
        sum += value
    }
    let average = sum / Double(history.count)
    return (average, min, max)
}


var bookDescription : String = "\(title)"
if let theRatings = ratings {
    let record = ratingRecord(history : theRatings)
    bookDescription += "has \(theRatings.count) ratings, \r\n average is \(record.average), from \(record.min) to \(record.max)"
}

bookDescription += "\r\nsupport web page : \(supportURL)"

print ("\(bookDescription)")

struct Task {
    var title:String
    var time:Int?
    // Add
    var owner:Employee
    var participant:Employee?
    
    var type :TaskType
    enum TaskType{
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String{
            get{
                let titleString:String
                switch self{
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
            
        }
    }
}

class Employee{
    var name:String?
    var phoneNumber:String?
    var boss:Employee?

}

let me:Employee = Employee()
me.name = "Alex"
me.phoneNumber = "010-4454-2659"

let toby:Employee = Employee()
toby.name = "Toby"
toby.phoneNumber = "000-0000-0000"

print("\(toby.phoneNumber)")

var callTask = Task(title: "Call to Toby", time: 10*60, owner: me, participant: toby, type:.Call)

var reportTask = Task(title: "Report to Boss", time: nil, owner: toby, participant: nil, type:TaskType.Report)

callTask.participant?.phoneNumber = "010-2222-2222"
print("\(toby.phoneNumber)")

var todayTask:[Task] = []
todayTask += [callTask, reportTask]
todayTask[1].time = 15*60

callTask.title = "Call to SaeYeon"

print("today task = \(todayTask),\n callTask = \(callTask)")










































