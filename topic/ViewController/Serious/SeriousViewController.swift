//
//  SeriousViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class SeriousViewController: UIViewController {
    
    @IBOutlet weak var topicView: UIView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    var SeriousTopicList = ["オススメのお店は？", "何時寝る？", "自慢出来ることはなに？", "自己紹介お願いします！","お休みの日何してる？", "趣味は？", "年収はおいくら？？", "行きつけのご飯屋さんはどこ？", "学生時代にやっていたことは？", "好きな昼食は？", "お母さんの味といったら？", "どこの海が好き？","血液型は？", "誕生日は？", "自分を動物に例えると？", "座右の銘は？", "今の仕事は？", "学生時代の1番の思い出は？", "友達からなんて呼ばれる？", "あだ名はある？", "最近ハマっていることは？", "男友達と女友達どっちが多い？", "スポーツする？", "尊敬する人は", "よく読む本はある？", "好きなテレビ番組は？", "好きな映画は？", "ストレス解消法を教えて！！", "人生で経験した方がいいことは？", "人気なお店は並んでも食べたい派？", "お酒は好き？", "おばけみたことある？", "料理はする？", "得意料理は？", "好きな食べ物は？", "嫌いな食べ物は？", "犬派？猫派？"]
    override func viewDidLoad() {
        super.viewDidLoad()
        randamTopic()
        cornerRadius()
        self.overrideUserInterfaceStyle = .light
        
        
        
    }
    
    func randamTopic() {
        let randomSerious = SeriousTopicList.randomElement()
        topicLabel.text = randomSerious
        
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }
    
    
    
    
    @IBAction func tapNextTopic(_ sender: Any) {
        randamTopic()
    }
    
}
