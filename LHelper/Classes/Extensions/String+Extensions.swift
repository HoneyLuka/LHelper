//
//  String+Extensions.swift
//  SleepSentry
//
//  Created by Selina on 11/4/2023.
//

import Foundation

public extension String {
    var localized: String {
        let value = NSLocalizedString(self, comment: "")
        if value != self || NSLocale.preferredLanguages.first == "en" {
            return value
        }
        
        guard let path = Bundle.main.path(forResource: "en", ofType: "lproj"), let bundle = Bundle(path: path) else {
            return value
        }
        
        return NSLocalizedString(self, bundle: bundle, comment: "")
    }
    
    func localized(_ args: CVarArg...) -> String {
        return String.localizedStringWithFormat(localized, args)
    }
    
    var trim: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
