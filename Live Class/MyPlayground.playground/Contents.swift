import UIKit

struct Person {
    var ssn: String!
    var name: String!
    var city: String!
    var state: String!
}

var person = Person()
person.ssn = "999-99-9999"
person.name = "Bob Sacamano"
person.city = "Denver"
person.state = "CO"

let person2 = person
print("\(person2.city!)")

person.city = "Toledo"
print("\(person2.city!)")
print("\(person.city!)")


//class Employee : Person {
//    var empId: String!
//    var department: String!
//    var healthInsurance: Bool!
//
//    func printChecks() {
//        print("Printing Checks")
//    }
//}
//
//class SalariedEmployee: Employee {
//    var salary: String!
//}
//
//class HourlyEmployee: Employee {
//    var hourlyRate: String!
//}

