//
//  PartyViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class PartyViewController: UIViewController {

    @IBOutlet weak var topicView: UIView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    
    var partyTopicList = ["恋人はいますか？", "趣味はなんですか？", "休みの日は何してますか？", "お仕事は何されてますか？","好きな動物は？", "好きな食べ物は？", "最近いったおすすめの場所は？", "今までいった1番いい旅行先は？", "好きな服装は？", "よく聞く曲は？", "家帰ったら何する？", "お風呂に入ったら、どこから洗う？","隣の人の印象は？"]
    override func viewDidLoad() {
        super.viewDidLoad()
        randamTopic()
        cornerRadius()

      
    }
    func randamTopic() {
        let randomParty = partyTopicList.randomElement()
        topicLabel.text = randomParty
    }

    @IBAction func tapNextTopic(_ sender: Any) {
        randamTopic()
    }
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }
    
   

}
