//
//  main.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//

import Foundation

let contactsInitializer = ContactsInitializer()
let contactRepository = contactsInitializer.initContactsRepository()

contactsInitializer.initOperations()

