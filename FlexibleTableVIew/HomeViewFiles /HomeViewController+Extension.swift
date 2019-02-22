//
//  HomeViewController+Extension.swift
//  FlexibleTableVIew
//
//  Created by Abraham VG on 22/02/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeModel.contentModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        //cell.testlabel.text = homeModel.contentModel[indexPath.row].content
        cell.testlabel.text = """
            When you set the row height as UITableViewAutomaticDimension, the table view is told to use the Auto Layout constraints and the contents of its cells to determine each cell’s height.
        In order for the table view to do this, you must also provide an estimatedRowHeight. In this case, 600 is just an arbitrary value that works well in this particular instance. For your own projects, you should pick a value that better conforms to the type of data that you’ll display.When you set the row height as UITableViewAutomaticDimension, the table view is told to use the Auto Layout constraints and the contents of its cells to determine each cell’s height.
        In order for the table view to do this, you must also provide an estimatedRowHeight. In this case, 600 is just an arbitrary value that works well in this particular instance. For your own projects, you should pick a value that better conforms to the type of data that you’ll display.
        """
        return cell
    }
    
    
}


