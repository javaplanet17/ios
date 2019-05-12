//
//  listviewlist.swift
//  SecureMusic
//
//  Created by Jakso Dewo on 5/12/19.
//  Copyright © 2019 onedevz. All rights reserved.
//

import UIKit

class listviewlist: UIView,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! listviewlistcell
        cell.textLabel?.text = "hello"
        return cell
    }
    

    var tableView = UITableView()
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(listviewlistcell.self, forCellReuseIdentifier: "cell")
        
        setup()
    }
    
    func setup() {
        
        self.backgroundColor = UIColor.black
        tableView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        tableView.layer.backgroundColor = UIColor.black.cgColor
        self.addSubview(tableView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
