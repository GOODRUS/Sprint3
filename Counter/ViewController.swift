//r
//  ViewController.swift
//  Counter
//
//  Created by Дмитрий Шиляев on 02.09.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var changeLog: UITextView!
    
    var counterScore = 0
    
    private func updateChangeLog(with text: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "[dd.MM.yyyy HH:mm:ss]:"
        let dateString = formatter.string(from: Date())
        if let existingText = changeLog.text {
             changeLog.text = existingText + "\n" + dateString + text
                } else {
                    changeLog.text = dateString
                }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "«Значение счётчика: 0»"
        changeLog.text = "История изменений:"
        changeLog.isEditable = false
        // Do any additional setup after loading the view.
    }

    @IBAction func resetScoreButton(_ sender: Any) {
        counterScore = 0
        counter.text = "«Значение счётчика: \(counterScore)»"
        updateChangeLog(with: " значение сброшено")
    }
    
    @IBAction func decreaseScoreButton(_ sender: Any) {
        
        if counterScore == 0 {
            counterScore = 0
            updateChangeLog(with: " попытка уменьшить значение счётчика ниже нуля")
        } else {
            counterScore -= 1
            updateChangeLog(with: " -1")}
        
        counter.text = "«Значение счетчика: \(counterScore)»"
    }
    
    @IBAction func increaseScoreButton(_ sender: Any) {
        counterScore += 1
        counter.text = "«Значение счётчика: \(counterScore)»"
        updateChangeLog(with: " +1")
    }
}


