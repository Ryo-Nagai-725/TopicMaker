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


 
}



extension CategoryViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollView.contentOffset.x = \(scrollView.bounds.width)")
        print("width = \(scrollView.bounds.width)")
        print("page = \(scrollView.contentOffset.x / scrollView.bounds.width)")
        
        if scrollView.contentOffset.x / scrollView.bounds.width == 0 {
            titleLabel.text = "面接練習"
        }else if scrollView.contentOffset.x / scrollView.bounds.width == 1 {
            titleLabel.text = "友人"
        }else if scrollView.contentOffset.x / scrollView.bounds.width == 2 {
            titleLabel.text = "家族"
        }
}
    
}
