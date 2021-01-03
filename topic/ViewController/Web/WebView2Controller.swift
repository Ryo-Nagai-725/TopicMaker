//
//  WebView2Controller.swift
//  topic
//
//  Created by 永井涼 on 2020/12/31.
//

import UIKit
class WebView2Controller: UIViewController {

    @IBOutlet var topicView: UIView!
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var nextTopicButton: UIButton!
    let traveList = ["函館山", "弘前城", "中尊寺金色堂", "松島湾", "角館武家屋敷通り", "銀山温泉", "大内宿", "日光東照宮", "草津温泉", "国営ひたち海浜公園", "東武動物公園", "東京ドイツ村", "東京スカイツリー", "みなとみらい21", "富士急ハイランド", "松本城", "彌彦神社", "黒部ダム", "兼六園", "東尋坊", "富士サファリパーク", "下呂温泉", "名古屋港水族館", "なばなの里", "琵琶湖", "京都タワー", "道頓堀", "姫路城", "奈良公園", "アドベンチャーワールド", "尾道", "水木しげるロード", "出雲大社", "倉敷美観地区", "角島", "渦潮", "金刀比羅宮", "椿の湯", "桂浜", "太宰府天満宮", "日本三大美肌の湯", "ハウステンボス", "グリーンランド" , "別府温泉", "高千穂峡" , "桜島", "沖縄美ら海水族館"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light
        traveViewTopic()
        cornerRadius()
    }

    @IBAction func tapNextButton(_ sender: Any) {
        traveViewTopic()
    }
    func traveViewTopic() {
        let randomParty = traveList.randomElement()
        topicLabel.text = randomParty
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }
}
