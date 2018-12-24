//
//  StretchyHeaderController.swift
//  Stretchy Header
//
//  Created by Charles Martin Reed on 12/23/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class StretchyHeaderController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let cellId = "cellId"
    fileprivate let headerId = "headerId"
    fileprivate let padding: CGFloat = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionViewLayout()
        setupCollectionView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent //a kludge, doesn't work well with scrolling behavior
    }
    
    //MARK:- Setup methods
    fileprivate func setupCollectionView() {
        collectionView.backgroundColor = .white //default is black
        collectionView.contentInsetAdjustmentBehavior = .never //turn off the safe area adjustments
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        //register your header - using a UICollectionReusableView
        //self gets the class that represents the HeaderView
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    fileprivate func setupCollectionViewLayout() {
        //custom code for collection view
        
        //collectionView layout customization
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            
            //layout is really powerful, it can control line spacing, cell size, header size, etc
            layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
        }
    }
    
    //MARK:- Methods for rendering header
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 340)
    }
    
    //MARK:- UICollectionView protocol methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        cell.backgroundColor = .black
        return cell
    }
    
    //MARK:- UICollectionViewDelegateFlowLayout protocol methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: view.frame.width - 2 * padding, height: 50)
    }
}
