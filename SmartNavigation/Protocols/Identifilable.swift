//
//  Presentable.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

protocol Identifilable {
   static var identifier: String { get }
   static var nibName: String { get }
}

extension Identifilable {
   static var identifier: String {
        return String(describing: self)
    }
    
  static var nibName: String {
        return String(describing: self)
    }
}
