import Foundation

//MARK: AddressBook Protocol
protocol AddressBook{
    func addPerson()
    func deletePerson()
    func listPersons()
    func sortPersonsById()
    func sortPersonsByName()
}

class AddressBookImpl:AddressBook{
    
    var persons:[Person]?
    
    init(filePath:String) {
        persons = Utility.readPersons(fileName: filePath)
    }
    //MARK: AddressBook Protocol Methods Implementation
    
    func addPerson() {
        print("You have added new person")
    }
    
    func deletePerson() {
        print("You have deleted person")
    }
    
    func listPersons() {
        print("You opened list of persons")
    }
    
    func sortPersonsById() {
        print("You sorted list of persons by ID")
    }
    
    func sortPersonsByName() {
        print("You sorted list of persons by Name")
    }
    
    //Custom Methods
    
}
