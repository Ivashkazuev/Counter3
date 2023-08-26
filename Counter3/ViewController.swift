//
//  ViewController.swift
//  Counter3
//
//  Created by Зуев Иван on 26.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика:\(counter)"
    }
    
}

