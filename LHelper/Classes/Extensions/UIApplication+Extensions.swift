//
//  AppUtils.swift
//  LHelper
//
//  Created by Selina on 29/5/2023.
//

import UIKit

public extension UIApplication {
    var appVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }
    
    var appBuildNumber: String {
        let obj = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion")
        if let string = obj as? String {
            return string
        }
        
        if let numberObj = obj as? NSNumber {
            return numberObj.stringValue
        }
        
        return "Unknown"
    }
    
    var appName: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? "Unknown"
    }
}
