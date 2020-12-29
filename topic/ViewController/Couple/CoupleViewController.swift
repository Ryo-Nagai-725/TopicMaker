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
    var coupleTopicList = ["デートでいきたい場所は？", "食べたいものは？", "どんな時に相手の事考える？", "好きって10回いって！！","初めて会った時の印象は？", "髪がロングのとショートどっちいい?", "作ってもらいたい料理は？", "好きな服装は？", "インドア派かアウトドア派？", "まだ話したことない趣味は？", "住むならマンションか一軒家か？"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()
        randamTopic()
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
