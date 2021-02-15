//
//  ViewController.swift
//  Subscription Box
//
//  Created by Ryan Cornel on 2/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
       
        return scrollView
        
    }()
    
    
    let container: UIStackView = {
        let container = UIStackView()
        
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        container.translatesAutoresizingMaskIntoConstraints = false
        
        return container
        
    }()
    var firstView: UIView!
    var secondView: UIView!
    var thirdView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        view.addSubview(scrollView)
        setupScrollView()
        scrollView.addSubview(container)
        
        setupContainer()
    
        
        firstView = UIView()
        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.backgroundColor = UIColor.systemBlue
        container.addArrangedSubview(firstView)
        
        firstView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        
        secondView = UIView()
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.backgroundColor = UIColor.systemPurple
        container.addArrangedSubview(secondView)
        
        secondView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        
        thirdView = UIView()
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.backgroundColor = UIColor.systemPink
        container.addArrangedSubview(thirdView)
        
        thirdView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        
        
        
        
        
    }

    func setupScrollView() {
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
    func setupContainer() {
        
        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        
    }
    
    func createOnboardingPage(message: String, imageName: String, color: UIColor) -> UIView {
        
        let page = UIView()
        
        let stackView : UIStackView = {
            let stackView = UIStackView()
            
            stackView.axis = .vertical
            stackView.spacing = 20
            stackView.distribution = .fill
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            return stackView
        }()
        
        let imageView : UIImageView = {
            let imageView = UIImageView()
            
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            
            
            return imageView
            
        }()
        
        let messageLabel : UILabel = {
            let messageLabel = UILabel()
            
            messageLabel.numberOfLines = 0
            messageLabel.textAlignment = .center
            messageLabel.font = UIFont(name: "Helvetica", size: 20)
            messageLabel.textColor = UIColor(white: 1.0, alpha: 0.8)
            
            
            return messageLabel
        }()
        
        stackView.widthAnchor.constraint(equalTo: page.layoutMarginsGuide.widthAnchor, multiplier: 0.5).isActive = true
        stackView.heightAnchor.constraint(equalTo: page.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerYAnchor.constraint(equalTo: page.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: page.centerXAnchor).isActive = true
        
       
        firstView.addSubview(stackView)
        stackView.addArrangedSubview(imageView)
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.6).isActive = true
        stackView.addArrangedSubview(messageLabel)
        return page
        
    }

}

