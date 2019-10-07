//
//  AuthenticationPresenter.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 07/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import Foundation

class AuthenticationPresenter: AuthenticationPresenterProtocol {
    var view: AuthenticationViewProtocol!
    var segueFrom: SeguesFrom.start!
    
    init(segueFrom: SeguesFrom.start) {
        self.segueFrom = segueFrom
    }
    
    func viewDidLoad() {
        view.setup(segueFrom: segueFrom)
    }
    
    func submitDidTapped() {
        
    }
}

class BiometricAuthenticationPresenter: AuthenticationPresenter {
    
    override func submitDidTapped() {
        BiometricAuthentication.evaluatePolicy(onSuccess: {
            self.view.performSegue(withIdentifier: SeguesFrom.authentication.toFinances, sender: nil)
        }, onError: {
            self.view.alert(message: $0)
        })
    }
}

class LoginAuthenticationPresenter: AuthenticationPresenter {
    
    override func submitDidTapped() {
        if view.viewModel.password == Session.current.password {
            self.view.performSegue(withIdentifier: SeguesFrom.authentication.toFinances, sender: nil)
        } else {
            view.alert(message: "Senha incorreta")
        }
    }
}

class RegisterAuthenticationPresenter: AuthenticationPresenter {
    
    override func submitDidTapped() {
        if  let password = view.viewModel.password,
            let confirmPassword = view.viewModel.confirmPassword,
            password.count >= 8 && password == confirmPassword {
            Session.current.save(password: password)
            self.view.performSegue(withIdentifier: SeguesFrom.authentication.toFinances, sender: nil)
        } else {
            view.alert(message: "A senha deve conter pelo menos 8 caractéres e deve-se confirmar a senha abaixo")
        }
    }
}
