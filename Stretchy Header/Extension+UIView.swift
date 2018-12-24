//
//  Extension+UIView.swift
//  Stretchy Header
//
//  Created by Charles Martin Reed on 12/23/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

extension UIView {
    func fillSuperview(padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let superViewTopAnchor = superview?.topAnchor {
            topAnchor.constraint(equalTo: superViewTopAnchor, constant: padding.top).isActive = true
        }
        
        if let superViewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superViewTrailingAnchor, constant: padding.right).isActive = true
        }
        
        if let superViewBottomAnchor = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superViewBottomAnchor, constant: padding.bottom).isActive = true
        }
        
        if let superViewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superViewTrailingAnchor, constant: padding.left).isActive = true
        }
        
        
    }
}
