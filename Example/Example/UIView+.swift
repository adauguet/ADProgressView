//
//  UIView+.swift
//  Example
//
//  Created by Antoine DAUGUET on 13/01/2017.
//  Copyright © 2017 Antoine DAUGUET. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
