//
//  collection.swift
//  SecureMusic
//
//  Created by Jakso Dewo on 5/12/19.
//  Copyright © 2019 onedevz. All rights reserved.
//

import UIKit

class collection: UIView,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! collectioncell
        cell.moving.text = "it work"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 50)
    }
    lazy var collectionViews: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.isPagingEnabled = true
        cv.backgroundColor = UIColor.clear
        cv.dataSource = self
        cv.delegate = self
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews(){
        collectionViews.register(collectioncell.self, forCellWithReuseIdentifier: "cell")
        collectionViews.translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.clear
        addSubview(collectionViews)
        collectionViews.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        collectionViews.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        collectionViews.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        collectionViews.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        collectionViews.widthAnchor.constraint(equalTo: widthAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    var collection = UICollectionView()
//
//    override init(frame: CGRect){
//        super.init(frame: frame)
//        setup()
//    }
//
//    func setup() {
//        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
//        layout.scrollDirection = UICollectionView.ScrollDirection.vertical
//        collection.setCollectionViewLayout(layout, animated: true)
//        collection.delegate = self
//        collection.dataSource = self
//        collection.register(collectioncell.self, forCellWithReuseIdentifier: "cell")
//        collection.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
//        collection.layer.backgroundColor = UIColor.black.cgColor
//        self.addSubview(collection)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

}
