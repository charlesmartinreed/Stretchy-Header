//
//  StretchyHeaderLayout.swift
//  Stretchy Header
//
//  Created by Charles Martin Reed on 12/25/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        
        // modify the attributes of the header component
        // of course we don't have multiple headers here, so the && is largely for testing future cases
        layoutAttributes?.forEach({ (attributes) in
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader && attributes.indexPath.section == 0 {
                
                //you can grab the headers attributes from the collection view or directly from the attributes array
                guard let collectionView = collectionView else { return }
                
                //to create the scaling effect, we'll alter the contentOffset for the collection view element
                let contentOffsetY = collectionView.contentOffset.y
                //print(contentOffsetY)
                
                //FIX: prevent the header view from collapsing in the collection view when scrolling back up
                if contentOffsetY > 0 {
                    return
                }
                
                //custom size for header
                let height = attributes.frame.height - contentOffsetY //moving it down
                let width = collectionView.frame.width
    
                //using contentOffsetY for y creates a neutralizing effect of sorts, keeping the frame from "moving"
                attributes.frame = CGRect(x: 0, y: contentOffsetY, width: width, height: height)
            }
        })
        return layoutAttributes
    }
    
    //changing bounds while dragging the collectionView should invalidate the original layout so that we can can create new ones
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
}
