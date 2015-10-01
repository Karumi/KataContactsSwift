//
//  GetContactDetail.swift
//  ContactsApp
//
//  Created by Davide Mendolia on 30/09/15.
//  Copyright © 2015 GoKarumi S.L. All rights reserved.
//

import Foundation

struct GetContactDetail {
    let contactRepository: ContactRepositoryProtocol

    func execute(index: Int) -> Contact {
        return contactRepository.get(index)
    }
}