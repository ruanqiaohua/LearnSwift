//
//  TableViewController.swift
//  LearnSwift
//
//  Created by ruanqiaohua on 16/9/14.
//  Copyright © 2016年 ruanqiaohua. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let buttonVC = ButtonViewController.init()
            buttonVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(buttonVC, animated: true)
            break
        case 1:
            let tableVC = TableViewController.init()
            tableVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(tableVC, animated: true)
            break
        case 2:
            let collectionVC = CollectionViewController.init()
            collectionVC.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(collectionVC, animated: true)
            break
        default:
            break
        }
    }

}
