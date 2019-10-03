//
//  Enviroment.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import Foundation

class Enviroment {
    
    static private var envDict: NSDictionary {
        let enviromentsDict = NSDictionary(dictionary: Bundle.main.infoDictionary!).value(forKey: "Enviroment") as! NSDictionary
        return enviromentsDict
    }
    
    static func value(for option: EnvOptions) -> String {
        return envDict.value(forKey: option.rawValue) as! String
    }
}

enum EnvOptions: String {
    case sessionKeychainIdentifier = "SESSION_KEYCHAIN_IDENTIFIER"
}
