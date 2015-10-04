//
//  ContactsInitializer.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//

import Foundation

class ContactsInitializer {
    
    private lazy var contactDataSource: MemoryDataSource<Contact> = {
        return MemoryDataSource<Contact>()
    }()
    
    // Init contact repository from memory datasource
    func initContactRepository() -> ContactRepositoryProtocol {
        return ContactRepository(datasource: contactDataSource)
    }
    
    func initOperations() {
        listContacts()
        while(true) {
            addContact()
            listContacts()
        }
    }
    
    // MARK: UI Inputs For Contact Details
    
    func getFirstName() -> String {
        print("Firstame: ", terminator: "")
        return readLine() ?? ""
    }
    func getLastName() -> String {
        print("Lastname: ", terminator: "")
        return readLine() ?? ""
    }
    func getPhone() -> String {
        print("Phonenumber: ", terminator: "")
        return readLine() ?? ""
    }
    
    // MARK: Operations on contact
    
    func listContacts() {
        print("Listing contacts ...")
        let getContacts = GetContacts(contactRepository: contactRepository)
        let contacts = getContacts.execute()
        showContacts(contacts)
    }
    
    func addContact() {
        let firstName = getFirstName()
        let lastName = getLastName()
        let phone = getPhone()
        let contact = Contact(firstName: firstName, lastName: lastName, phonenumber : phone)
        if(isContactInfoValid(contact)) {
            saveContactInRepo(contact)
        } else {
            print("Invalid contact details.")
        }
    }
    
    func saveContactInRepo(contact: Contact) {
        let addContact = AddContact(contactRepository: contactRepository)
        addContact.execute(contact)
    }
    
    func showContacts(contacts: [Contact]) {
        if contacts.count > 0 {
            contacts.forEach {
                print($0)
            }
            print("Total: \(contacts.count)")
        } else {
            print("No contacts")
        }
    }
    
}