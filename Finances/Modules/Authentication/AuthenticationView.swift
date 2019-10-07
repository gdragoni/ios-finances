//
//  AuthenticationView.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 07/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

class AuthenticationView: UIViewController, AuthenticationViewProtocol {
    @IBOutlet var passwordTxtField: UITextField!
    @IBOutlet var confirmPasswordTxtField: UITextField!
    
    var presenter: AuthenticationPresenterProtocol!
    var viewModel: AuthenticationViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = AuthenticationViewModel()
        presenter.viewDidLoad()
    }
    
    func setup(segueFrom: SeguesFrom.start) {

        passwordTxtField.isHidden = segueFrom == .toBiometric
        confirmPasswordTxtField.isHidden = segueFrom != .toRegister
    }
    
    @IBAction func submitDidTapped() {
        presenter.submitDidTapped()
    }
}

extension AuthenticationView: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text,
            let textRange = Range(range, in: text) {
            let updatedText = text.replacingCharacters(in: textRange,
                                                       with: string)
            
            if textField == passwordTxtField {
                viewModel.password = updatedText
            } else if textField == confirmPasswordTxtField {
                viewModel.confirmPassword = updatedText
            }
        }
        return true
    }
}
