//
//  PageModel.swift
//  TimedPageControl
//
//  Created by Gene Backlin on 1/26/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

class PageModel {
    var image: UIImage?
    var title: String?
    var subTitle: String?
    
    init() {
        image = nil
        title = nil
        subTitle = nil
    }
    
    convenience init(image: UIImage, title: String, subTitle: String) {
        self.init()
        self.image = image
        self.title = title
        self.subTitle = subTitle
    }
}

