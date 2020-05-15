//
//  ViewController.swift
//  LMCA_finalproject
//
//  Created by Lisa Li on 4/24/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit
import CoreData
import FirebaseDatabase
import AVFoundation

class InitialViewController: UIViewController {

    var players = [NSManagedObject]()
    var username : String!
    var currentBalance : Int64!
    var backgroundMusic = AVAudioPlayer()
    
    @IBOutlet weak var pictureWidth: NSLayoutConstraint!
    
    @IBOutlet weak var cashBalance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //pictureWidth.constant = self.view.bounds.width * 3 - 850
        //let ref = Database.database().reference()
        //ref.child("Scoreboard").setValue(["coins" : currentBalance, "name": username])
        
        let path = Bundle.main.path(forResource: "pokerBackgroundMusic.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        backgroundMusic = try! AVAudioPlayer(contentsOf: url)
        backgroundMusic.volume = 0.25
        backgroundMusic.prepareToPlay()
        backgroundMusic.numberOfLoops = -1
        backgroundMusic.play()

        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //2
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Player")
        
        //3
        do {
            players = try managedContext.fetch(fetchRequest)
            if !players.isEmpty {
                let player = players[0]
                self.username = player.value(forKey: "name") as? String
                self.currentBalance = player.value(forKey: "coins") as? Int64
                self.cashBalance.text = "Cash Balance: $\(self.currentBalance!)"
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
            return
        }
        if players.isEmpty {
            let refreshAlert = UIAlertController(title: "Start User Profile", message: "Please enter your name to start a game and increase your balance.", preferredStyle: UIAlertController.Style.alert)
            
            refreshAlert.addTextField { textField in
                textField.placeholder = "Enter name"
                textField.addTarget(refreshAlert, action: #selector(refreshAlert.textDidChange), for: .editingChanged)
            }

            let okAction = UIAlertAction(title: "Go!", style: .default) {
                (UIAlertAction) -> Void in
                guard let name = refreshAlert.textFields?[0].text
                    else {return}
                guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                        return
                    }
                  
                    // 1
                    let managedContext =
                        appDelegate.persistentContainer.viewContext
                  
                    // 2
                    let entity =
                        NSEntityDescription.entity(forEntityName: "Player", in: managedContext)!
                  
                    let player = NSManagedObject(entity: entity, insertInto: managedContext)
                  
                    // 3
                    let ref = Database.database().reference()
                    let room = ref.child("Scoreboard").childByAutoId()
                    room.setValue(["coins" : 3000, "name": name])
                    player.setValue(name, forKeyPath: "name")
                    player.setValue(3000, forKey: "coins")
                    player.setValue(room.key, forKey: "uniqueId")
                    // 4
                    do {
                        try managedContext.save()
                        self.players.append(player)
                        self.currentBalance = 3000
                        self.cashBalance.text = "Cash Balance: $3000"
                        self.username = name
                    } catch let error as NSError {
                        print("Could not save. \(error), \(error.userInfo)")
                    }
                
                

            }
            
            okAction.isEnabled = false
            refreshAlert.addAction(okAction)
            
            present(refreshAlert, animated: true)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func unwindEndGame(segue: UIStoryboardSegue) {
    }

    
    //Implement Core Data User Balance $$$ name the variable currentBalance
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSingle" {
            let viewController = segue.destination as! BlackJackViewController
            viewController.players = players
        }
    }
     
    
}

extension UIAlertController {
    @objc func textDidChange() {
        if let name = textFields?[0].text,
            let action = actions.last {
            action.isEnabled = !name.isEmpty
        }
    }
}
