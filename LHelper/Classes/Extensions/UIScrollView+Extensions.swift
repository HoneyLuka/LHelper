//
//  UIScrollView+Extensions.swift
//  SleepSentry
//
//  Created by Selina on 11/4/2023.
//

import UIKit

public extension UIScrollView {
    func scrollToRight(animated: Bool) {
        var off = contentOffset
        off.x = contentSize.width - bounds.width + contentInset.right
        setContentOffset(off, animated: animated)
    }
    
    func scrollToTop(animated: Bool) {
        var off = contentOffset
        off.y = 0 - self.contentInset.top
        setContentOffset(off, animated: animated)
    }
}
