//
//  FirstViewController.swift
//  500French
//
//  Created by Chris Withers on 7/31/20.
//  Copyright © 2020 Chris Withers. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let words = Words()
    
    lazy var randomStart = Int.random(in: 0..<words.English.count - 1)
    
    @IBOutlet weak var FrenchWord: UILabel!
    
    @IBOutlet weak var EnglishWord: UILabel!

    @IBAction func RevealButton(_ sender: UIButton) {
        EnglishWord.text = words.English[randomStart]
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        if randomStart == words.English.count - 1 {
            randomStart = 0
            reset()
        }else {
            randomStart += 1
            reset()
        }
        
    }
    
    func reset() {
        FrenchWord.text = words.French[randomStart]
        EnglishWord.text = "Press reveal if you don't know!"
    }
    
    @IBAction func PreviousButton(_ sender: UIButton) {
        if randomStart == 0 {
            randomStart = words.English.count - 1
            reset()
        }else {
            randomStart -= 1
            reset()
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }


}

