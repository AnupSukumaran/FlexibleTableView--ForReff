//
//  DataParser.swift
//  FlexibleTableVIew
//
//  Created by Abraham VG on 22/02/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import Foundation

class DataParser {
    var contentModel = [ContentModel]()
    
    init(jsonArray: [JSON]) {
        let newData = jsonArray.map{ContentModel.init(json: $0)}.compactMap{$0}
        contentModel = newData
    }
}
