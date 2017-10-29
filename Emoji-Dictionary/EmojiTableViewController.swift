//
//  EmojiTableViewController.swift
//  Emoji-Dictionary
//
//  Created by William Yang on 2017-10-28.
//  Copyright © 2017 WillYApps. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","💩","🏎","🐟","🍎","🎹"]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // puts the next view controller as a variable
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        // access variable from that controller and make it to what we set as sender from performSegue
        emojiDefVC.emoji = sender as! String
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
}
