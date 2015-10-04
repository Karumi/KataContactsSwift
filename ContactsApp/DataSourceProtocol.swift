//
//  DataSourceProtocol.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

protocol DataSourceProtocol {
    
    typealias ItemType
    func add(contact: ItemType)
    func getAll() -> [ItemType]
    func get(index: Int) -> ItemType

}