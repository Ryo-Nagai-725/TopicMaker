//
//  FriendViewController.swift
//  topic
//
//  Created by 永井涼 on 2021/01/03.
//

import UIKit

class FriendViewController: UIViewController {

    @IBOutlet var topicView: UIView!
    @IBOutlet var topicLabel: UILabel!
    @IBOutlet var nextTopicButton: UIButton!
    let FriendViewList = ["友達にいくらまで貸せる？", "親友と言える人数は？", "学生時代好きだった人","遊び行くならどこ？" ,"ご飯どこ行く？" ,"初めての友達は？" ,"恋愛経験何人？" ,"居酒屋の一杯目は？" ,"友達のダメなところは？" ,"友達のいいところは？" ,"運転免許持ってる？" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light

       
    }


    @IBAction func tapNextTopicButton(_ sender: Any) {
        FriendViewTopic()
    }
    
    
    func FriendViewTopic() {
        let randomParty = FriendViewList.randomElement()
        topicLabel.text = randomParty
    }
    
    func cornerRadius() {
        nextTopicButton.layer.cornerRadius = 20.0
        topicView.layer.cornerRadius = 20.0
    }

}
