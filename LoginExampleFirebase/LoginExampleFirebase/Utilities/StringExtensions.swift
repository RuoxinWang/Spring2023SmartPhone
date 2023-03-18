//
//  StringExtensions.swift
//  LoginExampleFirebase
//
//  Created by Ruoxin Wang on 3/18/23.
//

import Foundation

extension String {
    var isValidEmail : Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    
    var isValidPassword : Bool {
        let passwordRegEx = "^(?=.*[a-z])(?=.*[$@$#!%*?&]).{6,}$"
        let passwordPred = NSPredicate(format: "SELF MATCHES %@", passwordRegEx)
        return passwordPred.evaluate(with: self)
    }
}
