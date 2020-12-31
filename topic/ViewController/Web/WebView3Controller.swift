//
//  WebView3Controller.swift
//  topic
//
//  Created by 永井涼 on 2020/12/31.
//

import UIKit
import WebKit
class WebView3Controller: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://tango-gacha.com"
        let request = URLRequest(url: URL(string: url)!)
        webView.load(request)

       
    }


  

}
