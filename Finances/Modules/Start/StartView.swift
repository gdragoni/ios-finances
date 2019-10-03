//
//  StartView.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

class StartView: UIViewController {
    
    override func viewDidLoad() {
        
        performSegue(withIdentifier: SeguesFrom.start.toFinances, sender: nil)
    }
}
