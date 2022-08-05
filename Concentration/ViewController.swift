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
    
    
    @IBOutlet var emojiCollectionArray: [UIButton]!
    
    @IBAction func resetFlipsButton(_ sender: UIButton) {
        flipCount = 0
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func flipFirstCard(_ sender: UIButton!) {
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
        if let cardNumber = emojiCollectionArray.firstIndex(of: sender) {
            print(cardNumber)}
    }
        
    
    
    @IBAction func flipSecondCard(_ sender: UIButton!) {
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
        if let cardNumber = emojiCollectionArray.firstIndex(of: sender){
            print(cardNumber)
        }
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
