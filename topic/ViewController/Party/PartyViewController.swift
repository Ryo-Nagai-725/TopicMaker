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
    
    var partyTopicList = ["恋人はいますか？", "趣味はなんですか？", "休みの日は何してますか？", "お仕事は何されてますか？","好きな動物は？", "好きな食べ物は？", "最近いったおすすめの場所は？", "今までいった1番いい旅行先は？", "好きな服装は？", "よく聞く曲は？", "家帰ったら何する？", "お風呂に入ったら、どこから洗う？","隣の人の印象は？","大学時代何してた？" , "学生時代なんのバイトしてた？", "海外旅行したことありますか？", "将来どうなっていたい？", "みなさんの出身地は？" , "誰か自虐ネタできますか？", "好きなスポーツは？", "おすすめなお酒はありますか？" ,"社内で一番仲良い人は？" , "人間ドックの結果どうでした？", "酔いは早い方ですか？", "おつまみのおすすめはある？" ,"子供の頃の習い事は？" , "結婚されてる人？", "最近の仕事はどう？", "失敗した経験ありますか？" ,"学校時代の部活動は何してた？" , "暇な時何してる？", "自分にとってのビックイベントは？", "おすすめのポテトサラダは？" ,"一発芸お願いします！！" , "何時に寝る？", "ワインは飲む？", "自粛中何してた？" ,"年越しのカウントダウンなんの番組にする？" , "猫派？", "犬派？", "動物園と言ったら？"]
    override func viewDidLoad() {
        super.viewDidLoad()
        randamTopic()
        cornerRadius()
        self.overrideUserInterfaceStyle = .light

      
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
