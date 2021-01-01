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
   let contentsList = ["phonto 22", "phonto 21", "phonto 20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeButtonView.cornerRadius()
        setupTopicTableView()
        setupNavi()
        self.overrideUserInterfaceStyle = .light
        homeButtonView.generalButton.addTarget(self, action: #selector(HomeViewController.tapGeneralButton(sender:)), for: .touchUpInside)
        homeButtonView.partyButton.addTarget(self, action: #selector(HomeViewController.tapPartyButton(sender:)), for: .touchUpInside)
        homeButtonView.coupleButton.addTarget(self, action: #selector(HomeViewController.tapCoupleButton(sender:)), for: .touchUpInside)
        homeButtonView.seriousButton.addTarget(self, action: #selector(HomeViewController.tapSeriousButton(sender:)), for: .touchUpInside)
        
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
    @IBAction func tapAddButton(_ sender: Any) {
        let categoryVC: CategoryViewController = CategoryViewController()
        let navigationVC = UINavigationController(rootViewController: categoryVC)
        navigationVC.modalPresentationStyle = .fullScreen
        self.present(navigationVC, animated: true, completion: nil)
    }
    
    func setupNavi() {
        self.navigationController?.navigationBar.barTintColor = .orange
        self.navigationItem.titleView = UIImageView(image:UIImage(named:"phonto 13"))
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
        if indexPath.row == 0 {
            let WebVC = WebViewController()
            present(WebVC, animated: true, completion: nil)
        }else if indexPath.row == 1 {
            let Web2VC = WebView2Controller()
            present(Web2VC, animated: true, completion: nil)
        }else if indexPath.row == 2 {
            let Web3VC = WebView3Controller()
            present(Web3VC, animated: true, completion: nil)
        
    }
    }
        
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let webTopicTableViewCell = tableView.dequeueReusableCell(withIdentifier: WebTopicTableViewCell.className, for: indexPath) as? WebTopicTableViewCell else {
            return UITableViewCell()
        }
        if indexPath.section == 0 {
            webTopicTableViewCell.contentsImageView.image = UIImage(named: "\(contentsList[indexPath.row])")
        }else if indexPath.section == 1 {
            webTopicTableViewCell.contentsImageView.image = UIImage(named: "\(contentsList[indexPath.row])")
        }else if indexPath.section == 2 {
            webTopicTableViewCell.contentsImageView.image = UIImage(named: "\(contentsList[indexPath.row])")
            
           
        }
        webTopicTableViewCell.selectionStyle = .none
        
        
        return webTopicTableViewCell
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
            true
        }
}
