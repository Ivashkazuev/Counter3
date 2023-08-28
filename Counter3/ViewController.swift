//
//  ViewController.swift
//  Counter3
//
//  Created by Зуев Иван on 26.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyTextView: UITextView!
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextView.text = "История изменений:"
        historyTextView.isEditable = false
        // Do any additional setup after loading the view.
    }
    func getCurrentDate() -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
            return dateFormatter.string(from: Date())
        }
    @IBAction func incrementCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика:\(counter)"
        let currentDate = getCurrentDate()
        historyTextView.text += "\n\(currentDate): значение изменено на +1"
    }
    @IBAction func subtractionCounter(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "Значение счётчика:\(counter)"
            let currentDate = getCurrentDate()
            historyTextView.text += "\n\(currentDate): значение изменено на -1"
        }
        else {
            let currentDate = getCurrentDate()
            historyTextView.text += "\n\(currentDate): попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction func zeroCounter(_ sender: Any) {
        counter = 0
        counterLabel.text = "Значение счётчика:\(counter)"
        let currentDate = getCurrentDate()
        historyTextView.text += "\n\(currentDate): значение сброшено"
    }
   
}

