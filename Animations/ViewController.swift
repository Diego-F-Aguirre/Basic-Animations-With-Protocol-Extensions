//
//  ViewController.swift
//  Animations
//
//  Created by Michael Mecham on 8/14/16.
//  Copyright © 2016 MichaelMecham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var emailTextField: CustomTextField!
    @IBOutlet weak private var passwordTextField: CustomTextField!
    @IBOutlet weak private var confirmPasswordTextField: CustomTextField!
    @IBOutlet weak private var dateOfBirthTextField: CustomTextField!
    @IBOutlet weak private var signupButton: UIButton!
    
    var containerWidth: CGFloat {
        return self.view.frame.width
    }
    
    @IBAction func toggleLoginAndSignup(sender: AnyObject) {
        confirmPasswordTextField.toggleVisibility(containerWidth)
        dateOfBirthTextField.toggleVisibility(containerWidth)
    }

}

