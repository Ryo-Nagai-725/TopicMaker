//
//  SeriousViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class SeriousViewController: UIViewController {

    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var nextTopicButton: UIButton!
    var SeriousTopicList = ["こんにちは", "こんばんは", "おはよう", "おはようございます","ペイペイ", "サンさん", "こんか", "フォn", "べい", "とん", "さん", "人",]
    override func viewDidLoad() {
        super.viewDidLoad()
        randamTopic()
        cornerRadius()

       
            
    }
    
    func randamTopic() {
        let randomSerious = SeriousTopicList.randomElement()
        topicLabel.text = randomSerious
        
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
    }
    


    
    @IBAction func tapNextTopic(_ sender: Any) {
        randamTopic()
    }
    
}
