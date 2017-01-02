//
//  Mocks.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct MockContact: Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
}

class MockContactRepository: ContactRepositoryProtocol {
    var contacts: [Contact] = []
    func add(_ contact: Contact) { contacts.append(contact) }
    func getAll() -> [Contact] { return contacts }
    func get(at index: Int) -> Contact { return contacts[index] }
}
