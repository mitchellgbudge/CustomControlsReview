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
    let passwordLabel: UILabel = UILabel()
    let passwordContainerView: UIView = UIView()
    let passwordTextField: UITextField = UITextField()
    let loginButton: UIButton = UIButton()
    
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
        
        // Password label
        addSubview(passwordLabel)
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
        passwordLabel.topAnchor.constraint(equalToSystemSpacingBelow: emailContainerView.bottomAnchor, multiplier: 1).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
        passwordLabel.text = "Enter password here:"
        passwordLabel.font = UIFont.systemFont(ofSize: 18, weight: .light)
        
        // Password container view
        addSubview(passwordContainerView)
        passwordContainerView.translatesAutoresizingMaskIntoConstraints = false
        passwordContainerView.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
        passwordContainerView.topAnchor.constraint(equalToSystemSpacingBelow: passwordLabel.bottomAnchor, multiplier: 1.0).isActive = true
        passwordContainerView.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
        passwordContainerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordContainerView.layer.borderColor = UIColor.black.cgColor
        passwordContainerView.layer.borderWidth = 2
        passwordContainerView.layer.cornerRadius = 5
        
        // Password text field
        passwordContainerView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.leadingAnchor.constraint(equalTo: emailContainerView.leadingAnchor, constant: 8).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: passwordContainerView.topAnchor, constant: 8).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: emailContainerView.trailingAnchor, constant: -8).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: passwordContainerView.bottomAnchor, constant: -8).isActive = true
        passwordTextField.placeholder = "Password"
        
        // Login button
        addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalToSystemSpacingBelow: passwordContainerView.bottomAnchor, multiplier: 1).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loginButton.setTitle(" Login ", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.borderWidth = 2
        loginButton.layer.cornerRadius = 5
    }
    
}
