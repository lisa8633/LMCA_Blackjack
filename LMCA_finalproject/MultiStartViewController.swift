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
            RoomCode.name = userName
            
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }

    }
    
    @IBAction func newRoom(_ sender: Any) {
        let ref = Database.database().reference()
        let room = ref.childByAutoId()
        RoomCode.code = (room.key)!
        ref.child("\(RoomCode.code)/\(userName)").setValue(["coins" : userCoins, "cards": "none"])
        print("Room code is \(RoomCode.code)")
    }
    @IBAction func joinRoom(_ sender: Any) {
        RoomCode.code = (roomCode.text)!
        userName = "Bob"
        if RoomCode.code == ""{
            print("Please provide room code")
        }else{
            var ref = Database.database().reference()
            ref = ref.child("\(RoomCode.code)")
            ref.child("\(userName)").setValue(["coins" : userCoins, "cards": "none"])
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "MultiplayerViewController")
                    self.present(newViewController, animated: true, completion: nil)
        }
        
    }
    
}
