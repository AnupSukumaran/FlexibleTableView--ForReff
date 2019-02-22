//
//  HomeModel.swift
//  FlexibleTableVIew
//
//  Created by Abraham VG on 22/02/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import UIKit


class HomeModel: NSObject {
    
    var contentModel = [ContentModel]()
    var data = DataForm().data
    
    //MARK:
    func adaptingTableViewCells(_ main: HomeViewController) {
        main.homeTableView.rowHeight = UITableView.automaticDimension
        main.homeTableView.estimatedRowHeight = 600
    }
    
    //MARK:
    func gettingJSONData() {
         contentModel = DataParser.init(jsonArray: data).contentModel
    }
    
    //MARK:
    func adaptingContentWithTable(_ main: HomeViewController) {
        main.homeTableView.reloadData()
        main.homeTableView.layoutIfNeeded()
        main.homeTableHeight.constant = main.homeTableView.contentSize.height
//        main.scrollView.contentSize = CGSize(width: main.view.frame.size.width, height: main.homeTableView.contentSize.height)
    }
    
}
