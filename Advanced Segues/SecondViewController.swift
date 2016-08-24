//
//  SecondViewController.swift
//  Advanced Segues
//
//  Created by 李宝明 on 16/8/24.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var rowLabel: UILabel!
    
    var row = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        rowLabel.text = "\(row)"
    }

}
