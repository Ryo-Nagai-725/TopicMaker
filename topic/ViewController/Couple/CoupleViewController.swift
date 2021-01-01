//
//  CoupleViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class CoupleViewController: UIViewController {
    
    @IBOutlet weak var topicView: UIView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    var coupleTopicList = ["デートでいきたい場所は？", "食べたいものは？", "どんな時に相手の事考える？", "好きって10回いって！！","初めて会った時の印象は？", "髪がロングのとショートどっちいい?", "作ってもらいたい料理は？", "好きな服装は？", "インドア派かアウトドア派？", "まだ話したことない趣味は？", "住むならマンションか一軒家か？", "子供時代はどうだった？" ,"家族はどんな人たち？" ,"最初に会った時の印象は？" ,"出身地はどこ？", "地元の人と仲がいい？" ,"変わった癖はある？" ,"好きな映画は？" ,"好きなアニメは？", "最近よく使うアプリは？" ,"次行くデート先はどうする？" ,"最近流行っていることは？" ,"人生で一番良かった旅行先は？", "反省することは？" ,"隠し事はない？" ,"お互いの尊敬していることは？" ,"相手のどんな髪型が好き？" ,"おすすめのファッションは？", "カラオケで一番最初に歌う曲は？" ,"好きなスポーツは？" ,"おすすめの水族館は？" ,"ダジャレお願いします！笑","どの季節が好き？", "何か悩みはある？" ,"将来どうなっていたい？" ,"相手の魅力的なところは？" ,"子供の時の写真見せて？"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()
        randamTopic()
        self.overrideUserInterfaceStyle = .light
    }
    
    func randamTopic() {
        let randomCouple = coupleTopicList.randomElement()
        topicLabel.text = randomCouple
    }
    
    
    @IBAction func nextTopic(_ sender: Any) {
        randamTopic()
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }
    
}
