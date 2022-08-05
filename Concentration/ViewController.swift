//
//  ViewController.swift
//  Concentration
//
//  Created by Ahsan on 8/2/22.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    var emoji = "👻"
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func flipFirstCard(_ sender: UIButton!) {
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
    }
        
    
    
    @IBAction func flipSecondCard(_ sender: UIButton!) {
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
    }
    
    

    func flipCard (withEmoji emoji: String, on button: UIButton){
        
       
        if(button.currentTitle == "👻"){
            button.setTitle("", for: .normal)
            button.backgroundColor = .gray
        } else {
            button.setTitle("👻", for: .normal)
            button.backgroundColor = .orange
        }
        
    }
}
