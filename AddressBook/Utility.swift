import Foundation

class Utility{
   
    static func readPersons(fileName:String) -> [Person]{
        var persons = [Person]()
        let p1 = Person(id: "1", name: "Rahul", age: "25", mobileNumber: "9860616030")
        let p2 = Person(id: "2", name: "Mukesh", age: "30", mobileNumber: "9865678912")
        persons.append(p1)
        persons.append(p2)
        return persons
    }
    
    static func read(){
        //Added
    }
    
    static func readPlus(){
        //Added
    }
    
}
