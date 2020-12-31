//
//  WebView2Controller.swift
//  topic
//
//  Created by 永井涼 on 2020/12/31.
//

import UIKit
import WebKit
class WebView2Controller: UIViewController {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://shindanmaker.com/450943"
        let request = URLRequest(url: URL(string: url)!)
        webView.load(request)

       
    }


}
