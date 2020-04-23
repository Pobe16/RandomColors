//
//  colorextension.swift
//  RandomColors
//
//  Created by Mikolaj Lukasik on 23/04/2020.
//  Copyright © 2020 Mikolaj Lukasik. All rights reserved.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let randomColor = UIColor(
            red:    CGFloat.random(in: 0...1),
            green:  CGFloat.random(in: 0...1),
            blue:   CGFloat.random(in: 0...1),
            alpha:  1
        )
        
        return randomColor
    }
}
