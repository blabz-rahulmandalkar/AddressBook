import Foundation

//MARK: AddressBookManager Protocol

protocol AddressBookManager{
    func openAddressBook()
    func saveAddressBook()
    func listAddressBook()
    func createAddressBook()
}

class AddressBookManagerImpl:AddressBookManager{
    
    var addressBook:AddressBook?
    var filePath:String?
    //MARK: AddressBookManager Protocol Methods Implementation
    func openAddressBook() {
        //Get file name from user
        filePath = "/User/AddressBooks/addressBook1.json"
        addressBook = AddressBookImpl(filePath: filePath!)
        showMenu()
    }
    
    func saveAddressBook() {
        print("Your address book saved")
    }
    
    func listAddressBook() {
        print("You opened list of address books")
    }
    
    func createAddressBook() {
        print("Your have created new address book")
    }
    
    //Custom Methods
    
    private func showMenu(){
        var ch:String?
        repeat{
            print("1. Add Person\n2. Delete Person\n3. List Person\n4. Sort By Id\n5. Sort By Name\n6. Exit")
            guard let choice = readLine() else{
                return
            }
            ch = choice
            switch(choice){
            case "1":
                addressBook?.addPerson()
                break
            case "2":
                addressBook?.deletePerson()
                break
            case "3":
                addressBook?.listPersons()
                break
            case "4":
                addressBook?.sortPersonsById()
                break
            case "5":
                addressBook?.sortPersonsByName()
                break
            case "6":
                break
            default:
                print("Sorry! You have entered wrong choice..")
                break
            }
        }while ch != "6"
    }
}
