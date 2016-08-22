//
//  CustomImageView.swift
//  Animations
//
//  Created by Michael Mecham on 8/15/16.
//  Copyright © 2016 MichaelMecham. All rights reserved.
//

import UIKit

@IBDesignable
class CustomImageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
    }

}
