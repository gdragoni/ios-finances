//
//  UIViewController+Alert.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func alert(title: String = "Atenção", message: String, handler: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { alert in
            if let handler = handler {
                handler()
            }
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func actionSheet(title: String = "Atenção", message: String, actions: [UIAlertAction]) {
        let actionSheet = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        actions.forEach({ actionSheet.addAction($0) })
                
        present(actionSheet, animated: true, completion: nil)
    }
}
