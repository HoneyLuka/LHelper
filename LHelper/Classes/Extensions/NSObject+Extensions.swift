//
//  NSObject+Extensions.swift
//  SleepSentry
//
//  Created by Selina on 4/4/2023.
//

import Foundation

public extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
