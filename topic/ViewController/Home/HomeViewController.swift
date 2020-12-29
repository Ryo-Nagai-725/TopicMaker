//
//  HomeViewController.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var topicWebTableView: UITableView!
    @IBOutlet weak var homeButtonView: HomeButtonView!
    var settingBarButtonItem: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        homeButtonView.cornerRadius()
        homeButtonView.generalButton.addTarget(self, action: #selector(HomeViewController.tapGeneralButton(sender:)), for: .touchUpInside)
        homeButtonView.partyButton.addTarget(self, action: #selector(HomeViewController.tapPartyButton(sender:)), for: .touchUpInside)
        homeButtonView.coupleButton.addTarget(self, action: #selector(HomeViewController.tapCoupleButton(sender:)), for: .touchUpInside)
        homeButtonView.seriousButton.addTarget(self, action: #selector(HomeViewController.tapSeriousButton(sender:)), for: .touchUpInside)
        setupTopicTableView()
        self.navigationController?.navigationBar.barTintColor = .orange
        title = "Topic Get"
        
        settingBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(settingBarButtonTapped(_:)))
        
        self.navigationItem.rightBarButtonItems = [settingBarButtonItem]
    }
    @objc func settingBarButtonTapped(_ sender: UIBarButtonItem) {
            let reviewVC = ReviewViewController()
            present(reviewVC, animated: true, completion: nil)
        
        }
    
    @objc func tapGeneralButton(sender: Any) {
        let generalVC = GeneralViewController()
        present(generalVC, animated: true, completion: nil)
    }
    
    @objc func tapPartyButton(sender: Any) {
        let partyVC = PartyViewController()
        present(partyVC, animated: true, completion: nil)
    }
    
    @objc func tapCoupleButton(sender: Any) {
        let CoupleVC = CoupleViewController()
        present(CoupleVC, animated: true, completion: nil)
    }
    @objc func tapSeriousButton(sender: Any) {
        let SeriousVC = SeriousViewController()
        present(SeriousVC, animated: true, completion: nil)
    }
    
    func setupTopicTableView() {
        
        topicWebTableView.delegate = self
        topicWebTableView.dataSource = self
        topicWebTableView.register(UINib(nibName: WebTopicTableViewCell.className, bundle: nil), forCellReuseIdentifier: WebTopicTableViewCell.className)
        topicWebTableView.layer.cornerRadius = 20.0
    }
    
    
    
    
    
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let WebVC = WebViewController()
        present(WebVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let webTopicTableView = tableView.dequeueReusableCell(withIdentifier: WebTopicTableViewCell.className, for: indexPath) as? WebTopicTableViewCell else {
            return UITableViewCell()
        }
        
        return webTopicTableView
    }
    
    
    
}
