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
    
    var counterScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "Значение счётчика: 0"
        // Do any additional setup after loading the view.
    }


    @IBAction func increaseScoreButton(_ sender: Any) {
        counterScore += 1
        counter.text = "Значение счётчика: \(counterScore)"
    }
}


