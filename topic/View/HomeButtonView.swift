//
//  HomeButtonView.swift
//  topic
//
//  Created by 永井涼 on 2020/12/29.
//

import Foundation
import UIKit

class HomeButtonView: UIView {

    @IBOutlet weak var generalButton: UIButton!
    @IBOutlet weak var partyButton: UIButton!
    @IBOutlet weak var coupleButton: UIButton!
    @IBOutlet weak var seriousButton: UIButton!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
    }

    private func loadView() {
        let className = String(describing: type(of: self))
        let view: UIView = Bundle.main.loadNibNamed(className, owner: self, options: nil)?.first as? UIView ?? UIView()
        view.frame = bounds
        addSubview(view)
    }
    
    func cornerRadius() {
        generalButton.clipsToBounds = true
        generalButton.layer.cornerRadius = 20.0
        partyButton.clipsToBounds = true
        partyButton.layer.cornerRadius = 20.0
        coupleButton.clipsToBounds = true
        coupleButton.layer.cornerRadius = 20.0
        seriousButton.clipsToBounds = true
        seriousButton.layer.cornerRadius = 20.0
    }    
    
}

