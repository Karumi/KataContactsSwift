//
//  Exception.swift
//  ContactsApp
//
//  Created by Rohit Bansal on 04/10/15.
//
//

import Foundation

class Exception : NSObject, ErrorType {
    
    // MARK: Properties
    
    var errorMessage : String
    
    // MARK: Initialization
    
    init?(errorMessage : String) {
        self.errorMessage = errorMessage
        super.init()
        
        if(errorMessage.isEmpty) {
            return nil
        }
    }
    
}