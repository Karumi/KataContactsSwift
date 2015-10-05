//
//  Contact.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

protocol Contact {
    var firstName: String { get }
    var lastName: String { get }
    var phonenumber: String { get }
}