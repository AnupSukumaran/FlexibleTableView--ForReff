//
//  ContentModel.swift
//  FlexibleTableVIew
//
//  Created by Abraham VG on 22/02/19.
//  Copyright © 2019 TechTonic. All rights reserved.
//

import Foundation

class ContentModel {
    
    var title: String?
    var content: String?
    
    init(json: JSON) {
        let title = json["title"] as? String
        let content = json["content"] as? String
       
        self.title = title
        self.content = content
    }
    
}
