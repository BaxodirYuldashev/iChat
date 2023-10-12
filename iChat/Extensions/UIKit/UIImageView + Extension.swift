//
//  UIImageView + Extension.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 27/09/23.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
