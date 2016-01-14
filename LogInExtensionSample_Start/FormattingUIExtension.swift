//
//  FormattingUIExtension.swift
//  LogInExtensionSample_Start
//
//  Created by Ky Nguyen on 1/14/16.
//  Copyright © 2016 Ky Nguyen. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    
    func setupView() {

        createRoundCorner(emailPasswordContainerView, cornerRadius: 3)
        createRoundCorner(loginButton, cornerRadius: 3)

        backgroundImageView.image = UIImage(named: "loginBackground")
        blurBackground()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        disabledButton(loginButton)
    }
    
    func createRoundCorner(view: UIView, cornerRadius: CGFloat) {
        
        view.layer.cornerRadius = cornerRadius
    }
    
    func blurBackground() {
        
        let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurView = UIVisualEffectView(effect: darkBlur)
        blurView.frame = backgroundImageView.bounds

        backgroundImageView.addSubview(blurView)
    }
    
    func disabledButton(button: UIButton) {
        
        button.enabled = false
        button.backgroundColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 0.5)
    }
    
    func enabledButton(button: UIButton) {
        
        button.enabled = true
        button.backgroundColor = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)

    }
    
}