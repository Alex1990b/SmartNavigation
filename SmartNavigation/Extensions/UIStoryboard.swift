//
//  UIStoryboard.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

enum StoryboardType: String {
    case first   = "First"
}

extension UIStoryboard {
    
    func instantiateViewController<T: UIViewController>(from storyboardName: StoryboardType? = nil, bundle: Bundle? = nil) -> T  {
        
        var storyboard: UIStoryboard?
        
        if let storyboardName = storyboardName {
            storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: bundle)
        } else {
            storyboard = self
        }
        
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: T.identifier)
            as? T else {
                fatalError("Couldn't instantiate view controller with identifier \(T.identifier) ")
        }
        
        return viewController
    }
}
