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
            
            performSegue(withIdentifier: SeguesFrom.start.toBiometric, sender: BiometricAuthenticationPresenter(segueFrom: SeguesFrom.start.toBiometric))
        } else if Session.current.password != nil {
            
            performSegue(withIdentifier: SeguesFrom.start.toLogin, sender: LoginAuthenticationPresenter(segueFrom: SeguesFrom.start.toLogin))
        } else {
            
            performSegue(withIdentifier: SeguesFrom.start.toRegister, sender: RegisterAuthenticationPresenter(segueFrom: SeguesFrom.start.toRegister))
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  let authView = segue.destination as? AuthenticationViewProtocol,
            let authPresenter = sender as? AuthenticationPresenterProtocol {
            authView.presenter = authPresenter
            authPresenter.view = authView
        }
    }
}
