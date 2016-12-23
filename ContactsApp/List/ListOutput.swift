//
//  ListOutput.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct ListOutput: ListUI {
    func show(contacts: [Contact]) {
        if contacts.count > 0 {
            contacts.forEach {
                print($0)
            }
            print("Total: \(contacts.count)")
        } else {
            print("No contacts")
        }
    }

    func getFirstName() -> String {
        print("First name: ", terminator: "")
        return readLine() ?? ""
    }

    func getLastName() -> String {
        print("Last name: ", terminator: "")
        return readLine() ?? ""
    }

    func getPhone() -> String {
        print("Phone number: ", terminator: "")
        return readLine() ?? ""
    }

    func showError() {
        print("Error !!!!!")
    }
}
