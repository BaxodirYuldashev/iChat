//
//  SectionHeader.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 02/10/23.
//

import UIKit

class SectionHeader: UICollectionReusableView {
    
    static let reuseId = "SectionHeader"
    
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(title)
        
        title.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
    }
    
    func configure(text: String, font: UIFont?, textcolor: UIColor) {
        title.text = text
        title.textColor = textcolor
        title.font = font
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
