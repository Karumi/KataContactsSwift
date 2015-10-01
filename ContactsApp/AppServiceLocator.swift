
//
//  AppServiceLocator.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
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

    var listUI: ListUI {
        return ListOutput()
    }

    var listPresenter: ListPresenter {
        return ListPresenter(ui: listUI, getContactUseCase: getContacts, addContactUseCase: addContact)
    }
}