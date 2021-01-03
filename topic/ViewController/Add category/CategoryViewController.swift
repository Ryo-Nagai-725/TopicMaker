//
//  CategoryViewController.swift
//  topic
//
//  Created by 永井涼 on 2021/01/01.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var interViewButton: UIButton!
    @IBOutlet var friendButton: UIButton!
    @IBOutlet var familyButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.overrideUserInterfaceStyle = .light
        cornerRadius()
        setupNavi()
        setupScrollView()


    }
    @IBAction func tapBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func cornerRadius() {
        interViewButton.clipsToBounds = true
        interViewButton.layer.cornerRadius = 20.0
        friendButton.clipsToBounds = true
        friendButton.layer.cornerRadius = 20.0
        familyButton.clipsToBounds = true
        familyButton.layer.cornerRadius = 20.0
    }
    
    func setupNavi() {
        self.navigationController?.navigationBar.barTintColor = .orange
        title = "カテゴリ選択"
    }
    
    func setupScrollView() {
        scrollView.delegate = self
    }

    @IBAction func tapInterViewButton(_ sender: Any) {
        let interVC = InterViewController()
        present(interVC, animated: true, completion: nil)
    }
    
    @IBAction func tapFriendButton(_ sender: Any) {
        let friendVC = FriendViewController()
        present(friendVC, animated: true, completion: nil)
    }
    @IBAction func tapFamilyButton(_ sender: Any) {
        let familyVC = familyViewController()
        present(familyVC, animated: true, completion: nil)
    }
    
}



extension CategoryViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollView.contentOffset.x = \(scrollView.bounds.width)")
        print("width = \(scrollView.bounds.width)")
        print("page = \(scrollView.contentOffset.x / scrollView.bounds.width)")
        
}
    
}
