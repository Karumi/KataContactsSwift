//
//  main.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

let locator = AppServiceLocator()
locator.listPresenter.onInitialize()

while(true) {
    // Select Option to Add Contact
    locator.listPresenter.onInputContact()
}
