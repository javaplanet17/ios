//
//  collectioncell.swift
//  SecureMusic
//
//  Created by Jakso Dewo on 5/12/19.
//  Copyright © 2019 onedevz. All rights reserved.
//

import UIKit

class collectioncell: UICollectionViewCell {
    let moving = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        moving.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        moving.backgroundColor = UIColor.blue
        addSubview(moving)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
