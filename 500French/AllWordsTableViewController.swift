//
//  AllWordsTableViewController.swift
//  500French
//
//  Created by Chris Withers on 8/5/20.
//  Copyright © 2020 Chris Withers. All rights reserved.
//

import UIKit

class AllWordsTableViewController: UITableViewController {
    
    let words = Words()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return words.English.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Word", for: indexPath)
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.text = "English \(words.English[indexPath.row]) \nFrench: \(words.French[indexPath.row])"
        return cell
    }


}
