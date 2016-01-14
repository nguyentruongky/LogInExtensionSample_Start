//
//  DataValidationExtension.swift
//  LogInExtensionSample_Start
//
//  Created by Ky Nguyen on 1/14/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation
import UIKit

extension ViewController : UITextFieldDelegate {
    
    func isValidEmail(email: String) -> Bool {
        
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluateWithObject(email)
    }

    func isValidPassword(pass: String) -> Bool {
        
        // Check your password requirement here
        return pass.characters.count > 4 ? true: false
    }
    
    func handleLogInButtonEnable() {
        
        if (isValidEmail(emailTextField.text!) && isValidPassword(passwordTextField.text!) == true) {
            
            enabledButton(loginButton)
        }
        else {
            
            disabledButton(loginButton)
        }
    }
}