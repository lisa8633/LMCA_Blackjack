//
//  ScoreboardTableViewController.swift
//  LMCA_finalproject
//
//  Created by Lisa Li on 5/14/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit
import FirebaseDatabase
import CoreData
class HeadlineTableViewCell: UITableViewCell{
    @IBOutlet weak var name: UITextView!
    @IBOutlet weak var coins: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var coinLabel: UILabel!
}
class P {
    var name: String?
    var coins: Double?

    init(name: String?, coins: Double?) {
        self.name = name
        self.coins = coins
    }
}
class ScoreboardTableViewController: UITableViewController {
    @IBOutlet weak var PlayerTableView: UITableView!
    var players = [P]()
   let ref = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PlayerTableView.delegate = self
        PlayerTableView.dataSource = self
        
        ref.child("Scoreboard").queryOrderedByKey().observe(.childAdded, with: { (snapshot) in
                let results = snapshot.value as? [String : AnyObject]
                print(results)
                let name = results?["name"]
            print(name)
                let coins = results?["coins"]
                let play = P(name: name as! String, coins: coins as! Double?)
                self.players.append(play)
                DispatchQueue.main.async {
                    self.PlayerTableView.reloadData()
                }
        })
        print(players)
    }
    
        
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "player", for: indexPath) as! HeadlineTableViewCell

        let test = players[indexPath.row]
        cell.name?.text = test.name
        cell.coinLabel.text = "Coin: "
        cell.nameLabel.text = "Name: "
        cell.coins?.text = String(test.coins!)

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.row == 0{
        //.... return height whatever you want for indexPath.row
        return 80
        }else {
        return 60
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
