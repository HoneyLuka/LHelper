//
//  UIImage+Symbol.swift
//  LHelper
//
//  Created by Selina on 29/5/2023.
//

import UIKit

public extension UIImage {
    struct AppSymbol: RawRepresentable, Hashable {
        public typealias RawValue = String
        
        public var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

public extension UIImage {
    class func symbol(_ name: AppSymbol, size: CGFloat = 30, weight: SymbolWeight = .medium, scale: SymbolScale = .medium) -> UIImage? {
        let config = UIImage.SymbolConfiguration(pointSize: size, weight: weight, scale: scale)
        return UIImage(systemName: name.rawValue, withConfiguration: config)
    }
}
