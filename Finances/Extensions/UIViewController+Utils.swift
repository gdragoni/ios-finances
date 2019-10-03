//
//  UIViewController+Utils.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func performSegue(withIdentifier enumSegue: SegueEnumProtocol, sender: Any?) {
           performSegue(withIdentifier: enumSegue.rawValue, sender: sender)
       }
}
