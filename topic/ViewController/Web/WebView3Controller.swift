//
//  WebView3Controller.swift
//  topic
//
//  Created by 永井涼 on 2020/12/31.
//

import UIKit
class WebView3Controller: UIViewController {

    @IBOutlet var topicView: UIView!
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var nextTopicButton: UIButton!
    let QuestList = ["一番近くの自動販売機でジュースを買ってきて！", "穴の空いた靴下で一日過ごす", "1日携帯を使うな！！", "家の周り一周", "二度寝禁止", "家族全員に挨拶", "おつかいに行く"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light
        QuestViewTopic()
        cornerRadius()

       
    }

    @IBAction func tapNextTopicButton(_ sender: Any) {
        QuestViewTopic()
        
        
    }
    func QuestViewTopic() {
        let randomParty = QuestList.randomElement()
        topicLabel.text = randomParty
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }
}
