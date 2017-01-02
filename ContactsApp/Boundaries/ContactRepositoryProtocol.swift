//
//  File.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

protocol ContactRepositoryProtocol {
    func add(_ contact: Contact)
    func getAll() -> [Contact]
    func get(at index: Int) -> Contact
}
