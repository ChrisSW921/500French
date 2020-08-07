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
    @IBOutlet weak var NextButtonV: UIButton!
    
    @IBOutlet weak var RevealButtonV: UIButton!
    @IBOutlet weak var PreviousButtonV: UIButton!
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
        EnglishWord.text = "Press below to reveal!"
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
        NextButtonV.layer.shadowColor = UIColor.black.cgColor
        NextButtonV.layer.shadowOffset = CGSize(width: 5, height: 5)
        NextButtonV.layer.shadowRadius = 5
        NextButtonV.layer.shadowOpacity = 1.0
        PreviousButtonV.layer.shadowColor = UIColor.black.cgColor
        PreviousButtonV.layer.shadowOffset = CGSize(width: 5, height: 5)
        PreviousButtonV.layer.shadowRadius = 5
        PreviousButtonV.layer.shadowOpacity = 1.0
        RevealButtonV.layer.shadowColor = UIColor.black.cgColor
        RevealButtonV.layer.shadowOffset = CGSize(width: 5, height: 5)
        RevealButtonV.layer.shadowRadius = 5
        RevealButtonV.layer.shadowOpacity = 1.0
        reset()
    }


}

