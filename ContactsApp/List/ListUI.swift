//
//  ListUI.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

protocol ListUI {
    func showContacts(contacts: [Contact])
    func getFirstName() -> String
    func getLastName() -> String
    func getPhone() -> String
    func showError()
}