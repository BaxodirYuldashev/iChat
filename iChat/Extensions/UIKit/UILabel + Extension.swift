//
//  UILabel + Extension.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 27/09/23.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
