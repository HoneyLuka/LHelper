//
//  UIView+Extensions.swift
//  SleepSentry
//
//  Created by Selina on 14/5/2023.
//

import UIKit

public extension UIView {
    func snapshot(opaque: Bool = true, scale: CGFloat = 0) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(bounds.size, opaque, scale)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        
        layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}
