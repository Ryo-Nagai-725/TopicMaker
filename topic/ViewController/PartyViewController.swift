//
//  PartyViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class PartyViewController: UIViewController {

    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    
    var partyTopicList = ["こんにちは", "こんばんは", "おはよう", "おはようございます","ペイペイ", "サンさん", "こんか", "フォn", "べい", "とん", "さん", "人",]
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
    }
    
   

}
