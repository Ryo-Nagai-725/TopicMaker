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
    var SeriousTopicList = ["オススメのお店は？", "何時寝る？", "自慢出来ることはなに？", "自己紹介お願いします！","お休みの日何してる？", "趣味は？", "年収はおいくら？？", "行きつけのご飯屋さんはどこ？", "学生時代にやっていたことは？", "好きな昼食は？", "お母さんの味といったら？", "どこの海が好き？",]
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
        topicView.layer.cornerRadius = 20.0
    }
    
    
    
    
    @IBAction func tapNextTopic(_ sender: Any) {
        randamTopic()
    }
    
}
