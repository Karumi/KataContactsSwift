//
//  ValidateContact.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//

import Foundation

class ContactsValidator {
    
    static func isValidContact(contact: Contact) -> Bool {
        return isValidName(contact.firstName) && isValidName(contact.lastName)
            && isValidPhonenumber(contact.phonenumber)
    }
    
    // MARK: Validation methods
    
    private static func isValidName(input: String) -> Bool {
        return !(input ?? "").isEmpty
    }
    
    private static func isValidPhonenumber(input: String) -> Bool {
        return !(input ?? "").isEmpty
    }

}