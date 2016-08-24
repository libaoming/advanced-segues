//
//  ViewController.swift
//  Advanced Segues
//
//  Created by 李宝明 on 16/8/24.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

let globalName = "libaoming"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var activeRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = "zoe \(indexPath.row)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        activeRow = indexPath.row
        performSegue(withIdentifier: "goToSecondViewFromCell", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondViewFromCell" {
            let controller = segue.destination as! SecondViewController
            controller.row = activeRow
            
        }
    }

}

