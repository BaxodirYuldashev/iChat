//
//  UserCell.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 11/10/23.
//

import UIKit
import SnapKit

class UserCell: UICollectionViewCell, SelfConfiguringCell {
    
    let userImageView = UIImageView()
    let userName = UILabel(text: "", font: .laoSangamMN20())
    let containerView = UIView()
    
    static var reuseId: String = "UserCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupConstraints()
        
        self.layer.cornerRadius = 4
        
        self.layer.shadowColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1).cgColor
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.containerView.layer.cornerRadius = 4
        self.containerView.clipsToBounds = true
    }
    
    private func setupConstraints() {
        
        addSubview(containerView)
        containerView.addSubview(userImageView)
        containerView.addSubview(userName)
        
        containerView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        userImageView.snp.makeConstraints { maker in
            maker.top.left.right.equalToSuperview()
            maker.height.equalTo(userImageView.snp.width)
        }
        userName.snp.makeConstraints { maker in
            maker.top.equalTo(userImageView.snp.bottom)
            maker.left.right.equalToSuperview().inset(8)
            maker.bottom.equalToSuperview()
        }
    }
    
    func configure<U>(with value: U) where U : Hashable {
        guard let user: MUser = value as? MUser else { return }
        userImageView.image = UIImage(named: user.avatarStringURL)
        userName.text = user.username
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
