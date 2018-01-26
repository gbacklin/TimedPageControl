//
//  DataViewController.swift
//  TimedPageControl
//
//  Created by Gene Backlin on 1/26/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

import UIKit

class DataViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var dataObject: PageModel?
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.imageView.image = dataObject?.image
        self.titleLabel.text = dataObject?.title
        self.subTitleLabel.text = dataObject?.subTitle
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


