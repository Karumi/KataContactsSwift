//
//  ContactsInitializer.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//

import Foundation

class ContactsInitializer {

    let locator = AppServiceLocator()
    
    func initOperations() {
        while(true) {
            addContact()
            listContacts()
        }
    }
    
    // MARK: UI Inputs For Contact Details
    
    func getFirstName() -> String {
        print("\nFirst Name: ", terminator: "")
        return readLine() ?? ""
    }
    func getLastName() -> String {
        print("Last Name: ", terminator: "")
        return readLine() ?? ""
    }
    func getPhone() -> String {
        print("Phone Number: ", terminator: "")
        return readLine() ?? ""
    }
    
    // MARK: Operations on contact details
    
    func listContacts() {
        print("\nFetching contacts ...")
        let contacts = locator.getContacts.execute()
        showContacts(contacts)
    }
    
    func addContact() {
        let firstName = getFirstName()
        let lastName = getLastName()
        let phone = getPhone()
        let contact = ContactDTO(firstName: firstName, lastName: lastName, phonenumber : phone)
        if(ContactsValidator.isValidContact(contact)) {
            locator.addContact.execute(contact)
        } else {
            print("Please provide valid contact details.")
        }
    }
    
    func showContacts(contacts: [Contact]) {
        if contacts.count > 0 {
            contacts.forEach {
                print($0)
            }
            print("Total number of contacts: \(contacts.count)")
        } else {
            print("No contacts found!")
        }
    }
    
}