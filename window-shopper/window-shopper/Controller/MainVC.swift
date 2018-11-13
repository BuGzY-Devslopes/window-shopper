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
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
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
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    fileprivate func setupCalculateButton() {
        resultLabel.isHidden = false
        hoursLabel.isHidden = false
    }
    
    @objc func calculate() {
        if let wageText = wageText.text, let priceText = priceText.text, let wage = Double(wageText), let price = Double(priceText) {
            resultLabel.isHidden = false
            hoursLabel.isHidden = false
            resultLabel.text = String(Wage.getHours(forWage: wage, andPrice: price))
            self.wageText.resignFirstResponder()
            self.priceText.resignFirstResponder()
        }

    }
    
    @IBAction func clearCalculatorPressed(_ sender: UIButton) {
        wageText.text = nil
        priceText.text = nil
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    


}

