//
//  MTPale.swift
//  MotionToast
//
//  Created by Sameer Nawaz on 10/08/20.
//  Copyright © 2020 Femargent Inc. All rights reserved.
//

import UIKit

class MTPale: UIView {
    
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var msgLabel: UILabel!
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var circleImg: UIImageView!
    @IBOutlet weak var toastView: UIView!
    @IBOutlet weak var sideBarView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        sideBarView.layer.cornerRadius = 3
        toastView.layer.cornerRadius = 12
        circleView.layer.cornerRadius = circleView.bounds.size.width/2
        
        let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
        pulseAnimation.duration = 1
        pulseAnimation.fromValue = 0.7
        pulseAnimation.toValue = 1
        pulseAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        pulseAnimation.autoreverses = true
        pulseAnimation.repeatCount = .greatestFiniteMagnitude
        circleImg.layer.add(pulseAnimation, forKey: "animateOpacity")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let bundle = Bundle(for: MTPale.self)
        let viewFromXib = bundle.loadNibNamed("MTPale", owner: self, options: nil)![0] as! UIView
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
    
}
