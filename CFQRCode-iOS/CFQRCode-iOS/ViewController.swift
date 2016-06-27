//
//  ViewController.swift
//  CFQRCode-iOS
//
//  Created by 成飞 on 16/6/23.
//  Copyright © 2016年 成飞. All rights reserved.
//

import UIKit
import CFQRCode
import AVFoundation

class ViewController: UIViewController {
    let scanner = QRCode()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scanner.scan()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

