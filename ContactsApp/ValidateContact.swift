//
//  ValidateContact.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//

import Foundation

func isContactInfoValid(contact: Contact) -> Bool {
    return isValidName(contact.firstName) && isValidName(contact.lastName) && isValidPhonenumber(contact.phonenumber)
}

private func isValidName(input: String) -> Bool {
    return !input.isEmpty
}

private func isValidPhonenumber(input: String) -> Bool {
    return !input.isEmpty
}
