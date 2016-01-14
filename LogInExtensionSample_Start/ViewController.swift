//
//  ViewController.swift
//  LogInExtensionSample_Start
//
//  Created by Ky Nguyen on 1/14/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var emailPasswordContainerView: UIView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginAction(sender: AnyObject) {
        
        logIn()
    }
    
    @IBAction func editingChangedAction(sender: AnyObject) {
        
        handleLogInButtonEnable()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }


}

