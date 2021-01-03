//
//  familyViewController.swift
//  topic
//
//  Created by 永井涼 on 2021/01/03.
//

import UIKit

class familyViewController: UIViewController {

    @IBOutlet var topicView: UIView!
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var nextTopicButton: UIButton!
    let familyViewList = ["いま欲しいものは？","お母さんの味といったら？", "どこの海が好き？","血液型は？", "誕生日は？", "自分を動物に例えると？", "座右の銘は？", "今の仕事は？", "学生時代の1番の思い出は？", "友達からなんて呼ばれる？", "あだ名はある？", "最近ハマっていることは？", "男友達と女友達どっちが多い？", "スポーツする？", "尊敬する人は", "よく読む本はある？", "好きなテレビ番組は？", "好きな映画は？", "ストレス解消法を教えて！！", "人生で経験した方がいいことは？", "人気なお店は並んでも食べたい派？"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light
        familyTopic()
        cornerRadius()

        
    }


    
    @IBAction func tapNextTopicButton(_ sender: Any) {
        familyTopic()
    }
    
    func familyTopic() {
        let randomParty = familyViewList.randomElement()
        topicLabel.text = randomParty
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }

    
}
