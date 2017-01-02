//
//  DataSourceProtocol.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

protocol DataSourceProtocol {
    associatedtype ItemType
    func add(_ item: ItemType)
    func getAll() -> [ItemType]
    func get(at index: Int) -> ItemType
}
