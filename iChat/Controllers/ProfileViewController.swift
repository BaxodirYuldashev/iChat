//
//  ProfileViewController.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 12/10/23.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    let containerView = UIView()
    let imageView = UIImageView(image: UIImage(named: "human3"), contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "text", font: .systemFont(ofSize: 20, weight: .light))
    let aboutLabel = UILabel(text: "kawdbkawd jhbdjahw habwjabwd", font: .systemFont(ofSize: 16, weight: .light))
    let myTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }
    
}

extension ProfileViewController {
    private func setupConstraints(){
        aboutLabel.numberOfLines = 0
        containerView.backgroundColor = .mainWhite()
        containerView.layer.cornerRadius = 30
        myTextField.borderStyle = .roundedRect
        
        view.addSubview(imageView)
        view.addSubview(containerView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(aboutLabel)
        containerView.addSubview(myTextField)
        
        imageView.snp.makeConstraints { make in
            make.left.right.top.equalToSuperview()
            make.bottom.equalTo(containerView.snp.top).offset(30)
        }
        containerView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(206)
        }
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(35)
            make.left.right.equalToSuperview().inset(24)
        }
        aboutLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(24)
        }
        myTextField.snp.makeConstraints { make in
            make.top.equalTo(aboutLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(24)
            make.height.equalTo(48)
        }
    }
}
