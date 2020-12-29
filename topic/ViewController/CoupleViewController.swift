//
//  CoupleViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class CoupleViewController: UIViewController {

    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    var coupleTopicList = ["こんにちは", "こんばんは", "おはよう", "おはようございます","ペイペイ", "サンさん", "こんか", "フォn", "べい", "とん", "さん", "人",]
    override func viewDidLoad() {
        super.viewDidLoad()

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
    }
    
}
