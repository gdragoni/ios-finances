//
//  Session.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 07/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import Foundation
import Valet

class Session {
    
    static let current = Session()
    
    private let keychain: Valet = Valet.valet(with: Identifier(nonEmpty: Enviroment.value(for: .sessionKeychainIdentifier))!, accessibility: .alwaysThisDeviceOnly)
    
    func save(password: String) {
        keychain.set(string: password, forKey: KeychainKeys.password.rawValue)
    }
    
    var password: String? {
        return keychain.string(forKey: KeychainKeys.password.rawValue)
    }
    
    private enum KeychainKeys: String {
        case password = "KEY_PASSWORD"
    }
}


