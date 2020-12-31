//
//  WebViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit
import WebKit
class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "https://slot-maker.com/slot/17240/"
        let request = URLRequest(url: URL(string: url)!)
        webView.load(request)
    }




}
