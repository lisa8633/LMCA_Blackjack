//
//  MultiplayerViewController.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/30/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit
import FirebaseDatabase
import CoreData

class MultiplayerViewController: UIViewController {
    var userName = ""
    var userCoins = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
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
            
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }

        // Database
        let ref = Database.database().reference()
        ref.child("one").setValue(["name": userName, "coins" : userCoins, "cards": "none"])
        ref.child("one/name").observeSingleEvent(of: .value, with: {(snapshot)in
            let name = snapshot.value as? String
            print(name)
        })
        ref.child("one/coins").observeSingleEvent(of: .value, with: {(snapshot)in
            let coins = snapshot.value as? Double
            print(coins)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.landscapeRight, andRotateTo: UIInterfaceOrientation.landscapeRight)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func MultiEndGame(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "End Game?", message: "The current game will be terminated.", preferredStyle: UIAlertController.Style.alert)

        let okAction = UIAlertAction(title: "Yes", style: .default) {
            (UIAlertAction) -> Void in
            self.performSegue(withIdentifier: "unwindEndGame2", sender: self)
            NotificationCenter.default.removeObserver(self)

        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
        style: .cancel)
        
        refreshAlert.addAction(okAction)
        refreshAlert.addAction(cancelAction)
        
        present(refreshAlert, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
