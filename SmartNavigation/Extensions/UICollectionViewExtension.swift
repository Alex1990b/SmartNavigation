//
//  UICollectionViewExtension.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(cells: [T.Type]) {
        
        cells.forEach {
            let bundle = Bundle(for: $0.self)
            let nib = UINib(nibName: $0.nibName, bundle: bundle)
            register(nib, forCellWithReuseIdentifier: $0.identifier)
        }
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }
        
        return cell
    }
    
}

extension UICollectionViewCell: Identifilable { }
