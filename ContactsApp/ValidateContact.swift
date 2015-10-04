//
//  ValidateContact.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//

import Foundation

func validateContactDetails(contact: Contact) throws -> Bool {
    return try isValidName(contact.firstName) && isValidName(contact.lastName) && isValidPhonenumber(contact.phonenumber)
}

private func isValidName(input: String) throws -> Bool {
    if(input.isEmpty) {
        throw Exception(errorMessage: "Name cannot be empty")!
    } else {
        return true
    }
}

private func isValidPhonenumber(input: String) throws -> Bool {
    if(input.isEmpty) {
        throw Exception(errorMessage: "Phone Number cannot be empty")!
    } else {
        return true
    }
}
