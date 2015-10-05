//
//  ContactsServiceLocator.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 05/10/15.
//
//

import Foundation

class AppServiceLocator {
    
    lazy var contactDataSource: MemoryDataSource<Contact> = {
        return MemoryDataSource<Contact>()
    }()
    
    var contactRepository: ContactRepositoryProtocol {
        return ContactRepository(datasource: contactDataSource)
    }
    
    var getContacts: GetContacts {
        return GetContacts(contactRepository: contactRepository)
    }
    
    var addContact: AddContact {
        return AddContact(contactRepository: contactRepository)
    }
    
}
