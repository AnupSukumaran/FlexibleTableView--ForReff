//
//  HomeViewController.swift
//  FlexibleTableVIew
//
//  Created by Abraham VG on 22/02/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var homeTableHeight: NSLayoutConstraint!
    //@IBOutlet weak var scrollView: UIScrollView!
    
    var homeModel = HomeModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeModel.gettingJSONData()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        homeModel.adaptingTableViewCells(self)
        homeModel.adaptingContentWithTable(self)
        
    }
    
    
    

}
