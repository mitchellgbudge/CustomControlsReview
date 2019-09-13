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
    let emailContainerView: UIView = UIView()
    let emailTextField: UITextField = UITextField()
    
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
        addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        emailLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        emailLabel.text = "Enter email here:"
        emailLabel.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        // Email container view
        addSubview(emailContainerView)
        emailContainerView.translatesAutoresizingMaskIntoConstraints = false
        emailContainerView.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
        emailContainerView.topAnchor.constraint(equalToSystemSpacingBelow: emailLabel.bottomAnchor, multiplier: 1.0).isActive = true
        emailContainerView.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
        emailContainerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailContainerView.layer.borderColor = UIColor.black.cgColor
        emailContainerView.layer.borderWidth = 2
        emailContainerView.layer.cornerRadius = 5
        
        // Email text field
        emailContainerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor, constant: 8).isActive = true
        emailTextField.topAnchor.constraint(equalTo: emailContainerView.topAnchor, constant: 8).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor, constant: -8).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: emailContainerView.bottomAnchor, constant: -8).isActive = true
        emailTextField.placeholder = "Email"
    
    }
    
}
