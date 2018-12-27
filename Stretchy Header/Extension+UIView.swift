//
//  Extension+UIView.swift
//  Stretchy Header
//
//  Created by Charles Martin Reed on 12/23/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

extension UIView {
    func fillSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let superviewTop = superview?.topAnchor {
            topAnchor.constraint(equalTo: superviewTop).isActive = true
        }
        
        if let superviewTrailing = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superviewTrailing).isActive = true
        }
        
        if let superviewBottom = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superviewBottom).isActive = true
        }
        
        if let superviewLeading = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: superviewLeading).isActive = true
        }
    }
}
