//
//  StoryboardEnums.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import Foundation

enum Storyboards: String {
    case authentication = "Authentication"
    case finances = "Finances"
    case start = "Start"
}

struct SeguesFrom {
    
    enum start: String, SegueEnumProtocol {
        case toLogin = "toLogin"
        case toBiometric = "toBiometric"
        case toRegister = "toRegister"
    }
    
    enum authentication: String, SegueEnumProtocol {
        case toFinances = "toFinances"
    }
}

protocol SegueEnumProtocol {
    var rawValue: String { get }
}
