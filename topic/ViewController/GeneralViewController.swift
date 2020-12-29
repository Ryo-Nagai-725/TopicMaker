//
//  GeneralViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class GeneralViewController: UIViewController {

    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    var GeneralTopicList = ["こんにちは", "こんばんは", "おはよう", "おはようございます","ペイペイ", "サンさん", "こんか", "フォn", "べい", "とん", "さん", "人",]
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
    }

    
    @IBAction func nextTopic(_ sender: Any) {
        randomTopic()
    }
    

}
