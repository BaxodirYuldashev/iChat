//
//  ChatRequestViewController.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 13/10/23.
//

import UIKit

class ChatRequestViewController: UIViewController {
    
    let containerView = UIView()
    let imageView = UIImageView(image: UIImage(named: "human3"), contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "text", font: .systemFont(ofSize: 20, weight: .light))
    let aboutLabel = UILabel(text: "You have the opportunity to start a new chat", font: .systemFont(ofSize: 16, weight: .light))
    let acceptButton = UIButton(title: "ACCEPT", backgroundcolor: .black, font: .laoSangamMN20(), isShadow: false, cornerRadius: 10, titleColor: .white)
    let denyButton = UIButton(title: "Deny", backgroundcolor: .mainWhite(), font: .laoSangamMN20(), isShadow: false, cornerRadius: 10, titleColor: UIColor(red: 213/255, green: 51/255, blue: 51/255, alpha: 1))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainWhite()
        setupConstraints()
    }
}

extension ChatRequestViewController {
    private func setupConstraints(){
        
        denyButton.layer.borderWidth = 1.2
        denyButton.layer.borderColor = UIColor(red: 213/255, green: 51/255, blue: 51/255, alpha: 1).cgColor
        aboutLabel.numberOfLines = 0
        containerView.backgroundColor = .mainWhite()
        containerView.layer.cornerRadius = 30

        view.addSubview(imageView)
        view.addSubview(containerView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(aboutLabel)
        
        let buttonsStackview = UIStackView(arrangedSubviews: [acceptButton, denyButton], axis: .horizontal, spacing: 7)
        buttonsStackview.distribution = .fillEqually
        containerView.addSubview(buttonsStackview)
//
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
        buttonsStackview.snp.makeConstraints { make in
            make.top.equalTo(aboutLabel.snp.bottom).offset(24)
            make.left.right.equalToSuperview().inset(24)
            make.height.equalTo(56)
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.acceptButton.applyGradients(cornerRadius: 10)
    }
    
    @objc private func sendMessage() {
        
    }
}
