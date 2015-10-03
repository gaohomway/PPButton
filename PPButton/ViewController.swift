//
//  ViewController.swift
//  PPButton
//
//  Created by weifans on 15/10/2.
//  Copyright © 2015年 weifans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad() 

        let defaultBtn = PPButton(frame: CGRectMake(115, 140, 150, 36), ppButtonType: .PPBDefault)
        defaultBtn.setTitle("Default", forState: .Normal)
        self.view.addSubview(defaultBtn)
        
        let primaryBtn = PPButton(frame: CGRectMake(115, 190, 150, 36), ppButtonType: .PPBPrimary)
        primaryBtn.setTitle("Primary", forState: .Normal)
        self.view.addSubview(primaryBtn)
        
        let successbtn = PPButton(frame: CGRectMake(115, 240, 150, 36), ppButtonType: .PPBSuccess)
        successbtn.setTitle("Success", forState: .Normal)
        self.view.addSubview(successbtn)
        
        let infobtn = PPButton(frame: CGRectMake(115, 290, 150, 36), ppButtonType: .PPBInfo)
        infobtn.setTitle("Info", forState: .Normal)
        self.view.addSubview(infobtn)
        
        let warningbtn: PPButton = PPButton(frame: CGRectMake(115, 340, 150, 36), ppButtonType: .PPBWarning)
        warningbtn.setTitle("Warning", forState: .Normal)
        self.view.addSubview(warningbtn)
        
        let dangerbtn: PPButton = PPButton(frame: CGRectMake(115, 390, 150, 36), ppButtonType: .PPBDanger)
        dangerbtn.setTitle("Danger", forState: .Normal)
        self.view.addSubview(dangerbtn)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

