//
//  MemoryDataSource.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

class MemoryDataSource<T>: DataSourceProtocol {
    var items: [T] = []
    func add(_ item: T) { items.append(item) }
    func getAll() -> [T] { return items }
    func get(at index: Int) -> T { return items[index] }
}
