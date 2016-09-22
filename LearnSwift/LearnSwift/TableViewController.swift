//
//  TableViewController.swift
//  LearnSwift
//
//  Created by ruanqiaohua on 16/9/22.
//  Copyright © 2016年 ruanqiaohua. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    static var CellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tableView = UITableView.init(frame: self.view.bounds, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier:TableViewController.CellIdentifier)
        self.view.addSubview(tableView)
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11;
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewController.CellIdentifier, for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
