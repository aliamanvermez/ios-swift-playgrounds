
//Created by Ali Amanvermez 03.07.2023
import UIKit

struct Team {
    let teamName : String
    let teamMembers : [String]
    var memberNumber : [String : Int]
    
    init(teamName : String , teamMembers : [String], memberNumber : [String : Int]) {
        self.teamName = teamName
        self.teamMembers = teamMembers
        self.memberNumber = memberNumber
    }
    
    mutating func changeMemberNumber(){
        memberNumber["Messi"] = 30
    }
    
  
}

func address(of value: UnsafeRawPointer) -> Int {
    return Int(bitPattern: value)
}

var myMember = Team(teamName : "PSG" , teamMembers : ["Messi","Neymar"], memberNumber : ["Neymar" : 10])
print(NSString(format: "%p", address(of:&myMember)))
print(myMember.teamMembers)

myMember = Team(teamName: "MANU", teamMembers: ["Ronaldo", "Rashford" ], memberNumber: ["Ronaldo" : 7])

print(NSString(format: "%p", address(of:&myMember)))
print(myMember.teamMembers)
//myMember.teamMembers.append("Mbappe")
//
//myMember.changeMemberNumber()
//
//
//
print(myMember.memberNumber)

