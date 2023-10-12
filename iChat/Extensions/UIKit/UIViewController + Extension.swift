//
//  UIViewController + Extension.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 11/10/23.
//

import UIKit

extension UIViewController {
    func configure<T: SelfConfiguringCell, U: Hashable>(collectionView: UICollectionView, cellType: T.Type, with value: U, for indexPath: IndexPath) -> T {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellType.reuseId, for: indexPath) as? T else { fatalError("Unable to dequeu \(cellType)")}
        cell.configure(with: value)
        return cell
    }
}

