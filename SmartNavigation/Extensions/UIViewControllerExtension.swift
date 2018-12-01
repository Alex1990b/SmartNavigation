//
//  UIViewControllerExtension.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

extension UIViewController: Identifilable {
    
    func presentVC<T: UIViewController>(viewController: T.Type, animated: Bool = true, storyboardType: StoryboardType? = nil, bundle: Bundle? = nil, completion: (() -> ())? = nil)  {
        let viewController: T = storyboard!.instantiateViewController(from: storyboardType, bundle: bundle)
        present(viewController, animated: animated, completion: completion)
    }
    
    func pushVC<T: UIViewController>(viewController: T.Type, animated: Bool = true, storyboardType: StoryboardType? = nil, bundle: Bundle? = nil, completion: (() -> ())? = nil)  {
        let viewController: T = storyboard!.instantiateViewController(from: storyboardType, bundle: bundle) 
        navigationController?.pushViewController(viewController, animated: animated)
    }
}
