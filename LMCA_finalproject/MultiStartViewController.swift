//
//  MultiStartViewController.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/25/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit
import FirebaseDatabase
import CoreData
struct RoomCode {
    static var code = ""
    static var name = ""
    static var players = 0
    static var coins = 0.0
}

class MultiStartViewController: UIViewController, UITextFieldDelegate{
    var userName = ""
    var userCoins = 0.0
    @IBOutlet weak var roomCode: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomCode.delegate = self

        // Do any additional setup after loading the view.
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //core data
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Player")
        //3
        do {
            let players = try managedContext.fetch(fetchRequest)
            let player = players[0]
            userName = (player.value(forKey: "name") as? String)!
            userCoins = (player.value(forKey: "coins") as? Double)!
            RoomCode.coins = userCoins
            RoomCode.name = userName
            
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }

    }
    
    @IBAction func newRoom(_ sender: Any) {
        let ref = Database.database().reference()
        let room = ref.childByAutoId()
        RoomCode.code = (room.key)!
        ref.child("\(RoomCode.code)/\(userName)").setValue(["coins" : userCoins, "cards": "none", "num": 2])
        print("Room code is \(RoomCode.code)")
        userName = "Dealer"
        ref.child("\(RoomCode.code)/\(userName)").setValue(["coins" : 0, "cards": "none", "num": 1])
        ref.child("\(RoomCode.code)/turn").setValue(1)
        ref.child("\(RoomCode.code)/players").setValue(1)
        RoomCode.players = 1
    }
    @IBAction func joinRoom(_ sender: Any) {
        RoomCode.code = (roomCode.text)!
        RoomCode.name = userName
        //RoomCode.players = 1
        //edit out later
        if RoomCode.code == ""{
            print("Please provide room code")
        }else{
            var ref = Database.database().reference()
            ref.child("\(RoomCode.code)/players").setValue(2)
            RoomCode.players = 2
            ref.child("\(RoomCode.code)/players").observeSingleEvent(of: .value, with: {(snapshot)in
                var players = snapshot.value! as! Int
                RoomCode.players = players
                if players == 2{
                    
                }else{
                    ref.child("\(RoomCode.code)/\(self.userName)/num").setValue(4)
                    RoomCode.players = 3
                    ref.child("\(RoomCode.code)/players").setValue(3)
                }
                print(players)
            })
            ref.child("\(RoomCode.code)/\(self.userName)").setValue(["coins" : self.userCoins, "cards": "none", "num": 3])
            
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "MultiplayerViewController")
                    self.present(newViewController, animated: true, completion: nil)
        }
        
    }
    
}
