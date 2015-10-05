//
//  GetContacts.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct GetContacts {
    let contactRepository: ContactRepositoryProtocol

    func execute() -> [Contact] {
        return contactRepository.getAll()
    }
}