//
//  ViewController.swift
//  SmartNavigation
//
//  Created by Alex on 01.12.18.
//  Copyright © 2018 alex. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
}

private extension ViewController {
    @IBAction func showNextButtonTapped(_ sender: UIButton) {
        //present in one line of code
       presentVC(viewController: ViewController1.self)
    }
}

