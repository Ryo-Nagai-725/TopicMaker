//
//  GeneralViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class GeneralViewController: UIViewController {
    
    @IBOutlet weak var topicView: UIView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    var GeneralTopicList = ["恋人はいますか？", "趣味はなんですか？", "休みの日は何してますか？", "お仕事は何されてますか？","好きな動物は？", "好きな食べ物は？", "最近いったおすすめの場所は？", "今までいった1番いい旅行先は？", "好きな服装は？", "よく聞く曲は？", "家帰ったら何する？", "お風呂に入ったら、どこから洗う？","隣の人の印象は？","デートでいきたい場所は？", "食べたいものは？", "どんな時に相手の事考える？", "好きって10回いって！！","初めて会った時の印象は？", "髪がロングのとショートどっちいい?", "作ってもらいたい料理は？", "好きな服装は？", "インドア派かアウトドア派？", "まだ話したことない趣味は？", "住むならマンションか一軒家か？"]
    override func viewDidLoad() {
        super.viewDidLoad()
        randomTopic()
        cornerRadius()
        
        
    }
    
    func randomTopic() {
        let randamGeneral = GeneralTopicList.randomElement()
        topicLabel.text = randamGeneral
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }
    
    
    @IBAction func nextTopic(_ sender: Any) {
        randomTopic()
    }
    
    
}
