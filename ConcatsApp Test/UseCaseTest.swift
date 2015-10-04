//
//  ConcatsApp_Test.swift
//  ConcatsApp Test
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import XCTest

class UseCaseTest: XCTestCase {
    
    func testEmptyList() {
        let contactRepository = MockContactRepository()
        let useCase = GetContacts(contactRepository: contactRepository)
        let contacts = useCase.execute()
        XCTAssertTrue(contacts.count == 0)
    }

    func testAddContact() {
        let contactRepository = MockContactRepository()
        let useCase = AddContact(contactRepository: contactRepository)
        useCase.execute(
            NewContact(
                firstName: "Vincent",
                lastName: "Freeman",
                phonenumber: "612 34 56 79"
            )
        )
        let contacts = GetContacts(contactRepository: contactRepository).execute()
        XCTAssertTrue(contacts.count == 1)
    }

    func testContactDetails() {
        let contactRepository = MockContactRepository()
        let contact = NewContact(
            firstName: "Vincent",
            lastName: "Freeman",
            phonenumber: "612 34 56 79"
        )
        AddContact(contactRepository: contactRepository).execute(contact)
        let addedContact = GetContactDetail(contactRepository: contactRepository).execute(0)
        XCTAssertEqual(addedContact.firstName, contact.firstName)
        XCTAssertEqual(addedContact.lastName, contact.lastName)
        XCTAssertEqual(addedContact.phonenumber, contact.phonenumber)
    }
    
}