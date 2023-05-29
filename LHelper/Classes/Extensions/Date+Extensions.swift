//
//  Date+Extensions.swift
//  SleepSentry
//
//  Created by Selina on 5/4/2023.
//

import UIKit

public extension Date {
    var millseconds: Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
    
    init(millseconds: Int64) {
        let tsInSeconds = TimeInterval(millseconds) / 1000.0
        self = Date(timeIntervalSince1970: tsInSeconds)
    }
}
