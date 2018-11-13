//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Vlado Velkovski on 11/13/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        layer.cornerRadius = 5
        clipsToBounds = true
        backgroundColor =  UIColor(white: 1, alpha: 0.25)
        textAlignment = .center
        
        //        if placeholder == nil {
        //            placeholder = " "
        //        }
        
        if let placeholder = placeholder {
            let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            
            textColor = .white
            
        }
        
    }
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
