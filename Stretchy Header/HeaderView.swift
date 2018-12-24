//
//  HeaderView.swift
//  Stretchy Header
//
//  Created by Charles Martin Reed on 12/23/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
       let iv = UIImageView(image: #imageLiteral(resourceName: "Baby_Hedgehog"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //custom layout code
        backgroundColor = .red
        
        addSubview(imageView)
        //imageView.fillSuperview()
        
        //layout anchors for the imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true



        
        
    }
    
//    fileprivate func fillSuperview() {
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//
//        let imageConstraints = [
//            imageView.topAnchor.constraint(equalTo: self.topAnchor),
//            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
//            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
//        ]
//
//        NSLayoutConstraint.activate(imageConstraints)
//
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
        
}
