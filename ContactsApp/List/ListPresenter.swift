//
//  ListPresenter.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct ListPresenter {
    let ui: ListUI
    let getContactUseCase: GetContacts
    let addContactUseCase: AddContact

    func onInitialize() {
        loadContacts()
    }

    fileprivate func loadContacts() {
        let contacts = getContactUseCase.execute()
        ui.show(contacts: contacts)
    }

    fileprivate func isNameValid(_ name: String) -> Bool {
        return !name.isEmpty
    }

    fileprivate func isPhoneNumberValid(_ phoneNumber: String) -> Bool {
        return !phoneNumber.isEmpty
    }

    fileprivate func isContactInfoValid(firstName: String, lastName: String, phoneNumber: String) -> Bool {
        return !isNameValid(firstName)
            || !isNameValid(lastName)
            || !isPhoneNumberValid(phoneNumber)
    }

    func onInputContact() {
        let firstName = ui.getFirstName()
        let lastName = ui.getLastName()
        let phone = ui.getPhone()
        if isContactInfoValid(firstName: firstName, lastName: lastName, phoneNumber: phone) {
            ui.showError()
            return onInputContact()
        }
        addContactUseCase(
            NewContact(
                firstName: firstName,
                lastName: lastName,
                phoneNumber: phone
            )
        )

        loadContacts()
    }
}

struct NewContact: Contact {
    let firstName: String
    let lastName: String
    let phoneNumber: String
}
