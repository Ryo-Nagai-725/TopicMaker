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
        let url = "http://bayberry.sakura.ne.jp/title/index.htm"
        let request = URLRequest(url: URL(string: url)!)
                // リクエストをロードする
        webView.load(request)
    }




}
