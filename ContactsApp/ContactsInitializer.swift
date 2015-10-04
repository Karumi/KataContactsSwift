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
    
}