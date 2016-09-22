//
//  ButtonViewController.swift
//  LearnSwift
//
//  Created by ruanqiaohua on 16/9/14.
//  Copyright © 2016年 ruanqiaohua. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = UIButton.init(type: .system)
        btn.bounds = CGRect.init(x: 0, y: 0, width: 100, height: 100)
        btn.setTitle("按钮", for: .normal)
        btn.center = self.view.center
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(ButtonViewController.btnAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    func btnAction() {
        let alectVC = UIAlertController.init(title: "温馨提示", message: nil, preferredStyle: .alert)
        alectVC.addAction(UIAlertAction.init(title: "确定", style: .destructive, handler: { (UIAlertAction) in
            
        }))
        self.present(alectVC, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
