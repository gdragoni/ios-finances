//
//  AuthenticationProtocols.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 07/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import UIKit

protocol AuthenticationPresenterProtocol: class {
    var view: AuthenticationViewProtocol! { get set }
    var segueFrom: SeguesFrom.start! { get set }
    
    func viewDidLoad()
    func submitDidTapped()
}

protocol AuthenticationViewProtocol: UIViewController {
    var viewModel: AuthenticationViewModel! { get set }
    var presenter: AuthenticationPresenterProtocol! { get set }
    
    func setup(segueFrom: SeguesFrom.start)
}
