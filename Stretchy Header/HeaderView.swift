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

    //dynamic animation of views
    var animator: UIViewPropertyAnimator!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //custom layout code
        backgroundColor = .red
        
        addSubview(imageView)
        imageView.fillSuperview()
        
        //getting our blur initialized
        setupVisualEffectBlur()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK:- Blur method
    fileprivate func setupVisualEffectBlur() {
        //animating our visual effect
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
            //animation end state
            let blurEffect = UIBlurEffect(style: .prominent)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            
            self?.addSubview(visualEffectView)
            
            //provide hardcoded frame our use autolayout anchors to frame the view
            visualEffectView.fillSuperview()
        })
        
    }
}
