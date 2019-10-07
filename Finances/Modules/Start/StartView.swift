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
        
        if BiometricAuthentication.canEvaluatePolicy {
            
            performSegue(withIdentifier: SeguesFrom.start.toBiometric, sender: nil)
        } else if Session.current.password != nil {
            
            performSegue(withIdentifier: SeguesFrom.start.toLogin, sender: nil)
        } else {
            
            performSegue(withIdentifier: SeguesFrom.start.toRegister, sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  let segueIdentifier = segue.identifier,
            let segueFrom = SeguesFrom.start(rawValue: segueIdentifier),
            let authView = segue.destination as? AuthenticationViewProtocol {
            switch segueFrom {
            case .toLogin:
                authView.presenter = LoginAuthenticationPresenter(segueFrom: segueFrom)
                break
            case .toRegister:
                authView.presenter = RegisterAuthenticationPresenter(segueFrom: segueFrom)
                break
            case .toBiometric:
                authView.presenter = BiometricAuthenticationPresenter(segueFrom: segueFrom)
                break
            }
            authView.presenter.view = authView
        }
    }
}
