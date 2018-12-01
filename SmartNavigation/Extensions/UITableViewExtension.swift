//
//  UITableViewExtension.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(cells : [T.Type]) {
        
        cells.forEach {
            let bundle = Bundle(for: $0.self)
            let nib = UINib(nibName: $0.nibName, bundle: bundle)
            register(nib, forCellReuseIdentifier: $0.identifier)
        }
    }
    
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }
        
        return cell
    }
}

extension UITableViewCell: Identifilable { }
