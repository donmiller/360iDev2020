import UIKit

struct Person {
    var ssn: String!
    var name: String!
    var city: String!
    var state: String!
}

struct Employee {
    var person: Person!
    var empId: String!
    var department: String!
    var healthInsurance: String!
    
    func printChecks() {
        print("Printing Checks")
    }
}

struct SalariedEmployee {
    var employee: Employee!
    var salary: String!
}

struct HourlyEmployee {
    var employee: Employee!
    var hourlyRate: String!
}


