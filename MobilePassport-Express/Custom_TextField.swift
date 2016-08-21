//
//  Custom_TextField.swift
//  MobilePassport-Express
//
//  Created by Sagaya Abdulhafeez on 21/08/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import Foundation
import UIKit

class Custom_TextField: UITextField {
    override func awakeFromNib() {
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.whiteColor().CGColor
    }
}