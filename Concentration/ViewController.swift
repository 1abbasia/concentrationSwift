//
//  ViewController.swift
//  Concentration
//
//  Created by Ahsan on 8/2/22.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0
    var emoji = "👻"
    
    
    
    @IBAction func flipFirstCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
    }
    
    
    @IBAction func flipSecondCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
    }
    

    func flipCard (withEmoji emoji: String, on button: UIButton){
        
        print(button.title(for: UIControl.State.normal))
        if(button.currentTitle == "👻"){
            button.setTitle("", for: .normal)
            button.backgroundColor = .black
        } else {
            button.setTitle("👻", for: .normal)
            button.backgroundColor = .orange
        }
        
        
        
        
//        if(button.currentTitle == emoji){
//            print(button.currentTitle)
//            button.setTitle("", for: UIControl.State.normal)
//            button.backgroundColor = #colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)
//        } else {
//            button.setTitle(emoji, for: UIControl.State.normal)
//            button.backgroundColor = .systemOrange    }
    }
}
