//
//  RootPageViewController.swift
//  TimedPageControl
//
//  Created by Gene Backlin on 1/26/18.
//  Copyright © 2018 Gene Backlin. All rights reserved.
//

import UIKit

class RootPageViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(updatePageControl(notification:)), name: NSNotification.Name(rawValue: "IndexOfCurrentViewController"), object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Selector methods
    
    @objc
    func updatePageControl(notification: Notification) {
        let currentIndex: Int = notification.object as! Int
        pageControl.currentPage = currentIndex
    }
    
    @IBAction func timerSwitchDidChangeState(_ sender: UISwitch) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "TimerDidChangeNotification"), object: sender.isOn)
    }
}

