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

    private func loadContacts() {
        let contacts = getContactUseCase.execute()
        ui.showContacts(contacts)
    }

    private func isValidName(input: String) -> Bool {
        return !input.isEmpty
    }

    private func isValidPhonenumber(input: String) -> Bool {
        return !input.isEmpty
    }

    private func isContactInfoValid(firstName: String, lastName: String, phonenumber: String) -> Bool {
        return !isValidName(firstName)
            || !isValidName(lastName)
            || !isValidPhonenumber(phonenumber)
    }

    func onInputContact() {
        let firstName = ui.getFirstName()
        let lastName = ui.getLastName()
        let phone = ui.getPhone()
        if isContactInfoValid(firstName, lastName: lastName, phonenumber: phone) {
            ui.showError()
            return onInputContact()
        }
        addContactUseCase.execute(
            NewContact(
                firstName: firstName,
                lastName: lastName,
                phonenumber: phone
            )
        )

        loadContacts()
    }
}

struct NewContact: Contact {
    let firstName: String
    let lastName: String
    let phonenumber: String
}