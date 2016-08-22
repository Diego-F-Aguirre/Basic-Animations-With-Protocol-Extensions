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
    
//    var isSigningUp = true
    
    var containerWidth: CGFloat {
        return self.view.frame.width
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // toggleSignupLogin()
    }
    
    @IBAction func toggleLoginAndSignup(sender: AnyObject) {
        confirmPasswordTextField.toggleVisibility(containerWidth)
        dateOfBirthTextField.toggleVisibility(containerWidth)
    }
    
//    @IBAction func handleSignup(send: AnyObject) {
//       toggleSignupLogin()
//    }
//    
//    func toggleSignupLogin() {
//        isSigningUp ? signupButton.setTitle("Signup", forState: .Normal) : signupButton.setTitle("Login", forState: .Normal)
//        isSigningUp = !isSigningUp
//    }
}

