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
    
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 100
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        setupScrollView()
        scrollView.addSubview(container)
        setupContainer()
        setTable()
    
        let firstPage = createOnboardingPage(message: "Tell us about your pet's personality", imageName: "dog", color: .blue)
        let secondPage = createOnboardingPage(message: "Subscribe to your first box", imageName: "dog", color: .purple)
        let thirdPage = createOnboardingPage(message: "Get snacks and toys your pet will love", imageName: "dog", color: .systemPink)
        
        let pagesArray = [firstPage, secondPage, thirdPage]
        
        for page in pagesArray {
            page.translatesAutoresizingMaskIntoConstraints = false
            container.addArrangedSubview(page)
            page.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
            
        }
        
    }
    
    func setTable(){
        self.view.addSubview(table)
        table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
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
        
        page.addSubview(stackView)
        
        stackView.widthAnchor.constraint(equalTo: page.layoutMarginsGuide.widthAnchor, multiplier: 0.5).isActive = true
        stackView.heightAnchor.constraint(equalTo: page.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerYAnchor.constraint(equalTo: page.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: page.centerXAnchor).isActive = true
        
       
        
        stackView.addArrangedSubview(imageView)
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.6).isActive = true
        stackView.addArrangedSubview(messageLabel)
        
        imageView.image = UIImage(named: imageName)
        messageLabel.text = message
        page.backgroundColor = color
        
        return page
        
    }

}

