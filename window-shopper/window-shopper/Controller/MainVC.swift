//
//  ViewController.swift
//  window-shopper
//
//  Created by Vlado Velkovski on 11/13/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    
    lazy var calculateButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        button.setTitle("Calculate", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
//        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupCalculateButton()
        wageText.inputAccessoryView = calculateButton
        priceText.inputAccessoryView = calculateButton
    }
    
    fileprivate func setupCalculateButton() {
//        calculateButton.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60)
//        view.addSubview(calculateButton)
        
    }
    
    @objc func calculate() {
        print("123")
    }


}

