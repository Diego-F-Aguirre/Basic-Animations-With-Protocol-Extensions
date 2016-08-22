//
//  CustomTextField.swift
//  Animations
//
//  Created by Michael Mecham on 8/15/16.
//  Copyright © 2016 MichaelMecham. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    var originalFrame: CGRect = CGRectZero
    
    var isVisible: Bool = true
    
    var containerWidth: CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView()  {
        originalFrame = self.frame
        print(originalFrame)
    }
    
    func toggleVisibility(frameWidth: CGFloat) {
        containerWidth = frameWidth
        isVisible ? removeFromScreen() : bringOnToScreen()
        isVisible = !isVisible
    }
    
    func removeFromScreen(completion: ((readyForImage: Bool) -> Void)? = nil) {
        UIView.animateWithDuration(0.4, animations: {
            self.frame = CGRectMake(self.originalFrame.origin.x + 400, self.originalFrame.origin.y, self.containerWidth - 16, self.originalFrame.height)
            self.alpha = 0.0
        }) { (_) in
            self.frame = CGRectMake(self.originalFrame.origin.x, self.originalFrame.origin.y - 50, self.containerWidth - 16, self.originalFrame.height)
            completion?(readyForImage: true)
        }
    }
    
    func bringOnToScreen(completion: ((readyForImage: Bool) -> Void)? = nil) {
        UIView.animateWithDuration(0.4, animations: {
            self.frame = CGRectMake(self.originalFrame.origin.x, self.originalFrame.origin.y, self.containerWidth - 16 , self.originalFrame.height)
            self.alpha = 0.3
        }) { (_) in
            completion?(readyForImage: true)
        }
    }


}
