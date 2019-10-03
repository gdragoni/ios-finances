//
//  StoryboardEnums.swift
//  Finances
//
//  Created by Gabriel A. Dragoni on 03/10/19.
//  Copyright © 2019 Dragoni. All rights reserved.
//

import Foundation

enum Storyboards: String {
    case start = "Start"
    case finances = "Finances"
}

struct SeguesFrom {
    
    enum start: String, SegueEnumProtocol {
        case toFinances = "toFinances"
    }
}

protocol SegueEnumProtocol {
    var rawValue: String { get }
}
