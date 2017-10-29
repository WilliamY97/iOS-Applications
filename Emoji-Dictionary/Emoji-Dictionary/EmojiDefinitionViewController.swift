//
//  EmojiDefinitionViewController.swift
//  Emoji-Dictionary
//
//  Created by William Yang on 2017-10-28.
//  Copyright © 2017 WillYApps. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        
        // ["😀","💩","🏎","🐟","🍎","🎹"]
        
        if emoji == "😀" {
            emojiDefinitionLabel.text = "A nice happy face"
        }
        else if emoji == "💩" {
            emojiDefinitionLabel.text = "A nice poop emoji"
        }
        else if emoji == "🏎" {
            emojiDefinitionLabel.text = "This is the racecar emoji"
        }
        else if emoji == "🐟" {
            emojiDefinitionLabel.text = "A fish emoji made by Apple"
        }
        else if emoji == "🍎" {
            emojiDefinitionLabel.text = "An apple a day keeps the doctor away"
        }
        else if emoji == "🎹" {
            emojiDefinitionLabel.text = "A piano keyboard emoji"
        }
        
    }


}
