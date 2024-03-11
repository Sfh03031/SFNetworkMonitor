//
//  ViewController.swift
//  SFNetworkMonitor
//
//  Created by Sfh03031 on 03/11/2024.
//  Copyright (c) 2024 Sfh03031. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        
        let web = WKWebView(frame: self.view.bounds)
        web.load(URLRequest.init(url: URL.init(string: "https://www.baidu.com")!))
        self.view.addSubview(web)
        
        print(SFNetworkMonitor.shared.netStatus.rawValue)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            if SFNetworkMonitor.shared.netStatus == .cellular {
                SFNetworkMonitor.shared.showAlertIfCellular(ignore: {
                    print("取消")
                }, goBack: {
                    print("返回")
                })

            }
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

