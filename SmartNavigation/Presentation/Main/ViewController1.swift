//
//  ViewController1.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

final class ViewController1: UIViewController { }

private extension ViewController1 {
    @IBAction func showNextButtonTapped(_ sender: UIButton) {
        //present when you need to get object
        let viewController2: ViewController2 = storyboard!.instantiateViewController(from: .first, bundle: nil)
        present(viewController2, animated: true, completion: nil)
    }
}

