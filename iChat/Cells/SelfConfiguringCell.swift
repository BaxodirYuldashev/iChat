//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 02/10/23.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
