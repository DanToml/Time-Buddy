//
//  ColumnBasedFlowLayout.swift
//  Time Buddy
//
//  Created by Dan on 4/17/16.
//  Copyright © 2016 Rocket Apps. All rights reserved.
//

import Cocoa

class ColumnBasedFlowLayout: NSCollectionViewFlowLayout {
    init(numberOfColumns: Int, minimumPadding: CGFloat, totalWidth: CGFloat, itemHeight: CGFloat) {
        super.init()
        
        let minimumSpacing: CGFloat = 5.0
        minimumInteritemSpacing = minimumSpacing
        minimumLineSpacing = minimumSpacing
        sectionInset = NSEdgeInsetsMake(0.0, minimumSpacing,
                                        0.0, minimumSpacing)
        let itemWidth: CGFloat = floor(
            (totalWidth - minimumSpacing * (CGFloat(numberOfColumns) + 1))
                / CGFloat(numberOfColumns)
        )
        
        itemSize = CGSizeMake(itemWidth, itemHeight)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
