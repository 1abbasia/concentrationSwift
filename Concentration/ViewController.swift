//
//  ViewController.swift
//  Concentration
//
//  Created by Ahsan on 8/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Card(_ sender: UIButton) {
    }
    
    @IBAction func tapToFlipCard(_ sender: UIButton) {

        flipCard(withEmoji: "👻", on: sender)
    }
}

func flipCard (withEmoji emoji: String, on button: UIButton){
    if(button.currentTitle == emoji){
        button.setTitle("", for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)
    } else {
        button.setTitle(emoji, for: UIControl.State.normal)
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
