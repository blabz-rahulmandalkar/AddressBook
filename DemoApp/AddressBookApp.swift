import Foundation


protocol AddressBookApp {
    func openApp()
}
class AddressBookAppImpl:AddressBookApp{
    
    let addressBookManager:AddressBookManager?
    
    init() {
        addressBookManager = AddressBookManagerImpl()
    }
    
    func openApp() {
        var ch:String?
        repeat{
            print("1. Create AddressBook\n2. Open AddressBook\n3. List AddressBook\n4. Save AddressBook\n5. Exit")
            guard let choice = readLine() else{
                return
            }
            ch = choice
            switch(choice){
            case "1":
                addressBookManager?.createAddressBook()
                break
            case "2":
                addressBookManager?.openAddressBook()
                break
            case "3":
                addressBookManager?.listAddressBook()
                break
            case "4":
                addressBookManager?.saveAddressBook()
                break
            case "5":
                break
            default:
                print("Sorry! You have entered wrong choice..")
                break
            }
        }while ch != "5"
    }
}
