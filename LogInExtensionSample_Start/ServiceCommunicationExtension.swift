//
//  ServiceCommunicationExtension.swift
//  LogInExtensionSample_Start
//
//  Created by Ky Nguyen on 1/14/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation

extension ViewController {
    
    func logIn() {
        
        print("log in action")
        
        if emailTextField.text!.characters.count % 2 == 0 {
            
            handleSuccessResponse()
        }
        else {
            
            handleFailResponse()
        }
    }
    
    func handleSuccessResponse() {
        
        print("success")
    }
    
    func handleFailResponse() {
        
        print("fail")
    }
}