//
//  ViewController.swift
//  SFNetworkMonitor
//
//  Created by Sfh03031 on 03/11/2024.
//  Copyright (c) 2024 Sfh03031. All rights reserved.
//

import UIKit
import WebKit
import SFNetworkMonitor

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        
        /// 网络状态变化通知
        NotificationCenter.default.addObserver(self, selector: #selector(netChange(_:)), name: SFNetworkMonitor.kNotificationNameNetworkChanged, object: nil)
        
        let web = WKWebView(frame: self.view.bounds)
        web.load(URLRequest.init(url: URL.init(string: "https://www.baidu.com")!))
        self.view.addSubview(web)
        
        // 主动获取当前网络状态
        print(SFNetworkMonitor.shared.netStatus.rawValue)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            print(SFNetworkMonitor.shared.netStatus.rawValue)
            if SFNetworkMonitor.shared.netStatus == .cellular {
                SFNetworkMonitor.shared.showAlertIfCellular(ignore: {
                    print("取消")
                }, goBack: {
                    print("返回")
                })

            }
        })
        
    }
    
    @objc func netChange(_ noti: Notification) {
        if let obj = noti.object as? SFNetStatus {
            switch obj {
            case .cellular:
                print("流量")
            case .wifi:
                print("Wifi")
            case .noNet:
                print("断网")
            default:
                break
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

