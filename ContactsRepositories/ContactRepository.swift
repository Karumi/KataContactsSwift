//
//  ContactRepository.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct ContactRepository<T: DataSourceProtocol>: ContactRepositoryProtocol where T.ItemType == Contact {
    let datasource: T

    func add(_ contact: Contact) { datasource.add(contact) }
    func getAll() -> [Contact] { return datasource.getAll() }
    func get(at index: Int) -> Contact { return datasource.get(at: index) }
}
