//
//  ViewController.swift
//  Subscription Box
//
//  Created by Ryan Cornel on 2/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var container: UIStackView!
    var firstView: UIView!
    var secondView: UIView!
    var thirdView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        view.addSubview(scrollView)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        container.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(container)
        
        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        
        
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

    

}

