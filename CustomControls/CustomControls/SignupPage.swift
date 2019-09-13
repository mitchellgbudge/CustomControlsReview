//
//  SignupPage.swift
//  CustomControls
//
//  Created by Mitchell Budge on 9/12/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class SignupPage: UIControl {
    
    // MARK: - Properties
    
    let backgroundImageView: UIImageView = UIImageView()
    let emailLabel: UILabel = UILabel()
    
    // MARK: - Required Initializers
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupSubViews()
    }
    
    // MARK: - Methods and Functions
    
    func setupSubViews() {
        // Background image
        addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "BackgroundPhoto")
        
        // Email label
        
    }
    
}
