//
//  WebViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit
class WebViewController: UIViewController {

    @IBOutlet var topicView: UIView!
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    let dinnerViewList = ["肉じゃが", "ハンバーグ", "唐揚げ", "餃子", "麻婆豆腐", "ドリア", "グラタン", "チャーハン", "カレー", "シチュー", "ビーフシチュー", "ピラフ", "ガパオライス", "炊き込みご飯", "ラーメン", "ピザ", "ハンバーガー", "パスタ", "焼き鳥", "野菜炒め", "とんかつ", "お寿司", "ちゃんぽん", "焼き魚", "天丼", "お蕎麦", "うどん", "お鍋", "ステーキ", "焼肉", "牛丼", "いかめし", "お好み焼き", "生姜焼き", "アヒージョ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light
        dinnerViewTopic()
        cornerRadius()
       
    }


    @IBAction func tapNextButton(_ sender: Any) {
        dinnerViewTopic()
    }
    
    func dinnerViewTopic() {
        let randomParty = dinnerViewList.randomElement()
        topicLabel.text = randomParty
    }
    
    func cornerRadius() {
        nextButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }

}
