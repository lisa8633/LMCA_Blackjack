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

class MultiplayerViewController: UIViewController{
    var userName = ""
    var playerdData: Dictionary<String, Any> = [:]
    var deck = Deck(numofDeck: 6)
    var userTurn = 0
    var turn = 0
    var user = User()
    
    var dealer = Dealer()
    
    var userCardsDealt : Int!
    var dealerCardsDealt : Int!
    
    var userBet : Double = 0 // initial user bet
    var dealtAlready = false
    var dealerDealt = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName = RoomCode.name
       
        // Database
        let ref = Database.database().reference()
        ref.child("\(RoomCode.code)").observeSingleEvent(of: .value, with: {(snapshot)in
            let playerData = snapshot.value!
            print(playerData)
        })
        ref.child("\(RoomCode.code)/\(userName)/num").observeSingleEvent(of: .value, with: {(snapshot)in
            self.userTurn = snapshot.value! as! Int
        })
        ref.child("\(RoomCode.code)/turn").observeSingleEvent(of: .value, with: {(snapshot)in
            self.turn = snapshot.value! as! Int
            print(self.userTurn)
        })
        userBet = 10

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.landscapeRight, andRotateTo: UIInterfaceOrientation.landscapeRight)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        deck.shuffle()
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
    func endTurn(){
        self.turn += 1
        let ref = Database.database().reference()
        ref.child("\(RoomCode.code)/turn").setValue(turn)
        //update turn
        if user.blackjack && dealer.blackjack {
            print("tie")
            //flipCard(cardNum : 10)
            //endRound(delay: dealerCardsDealt + 1)
        }
        if user.blackjack && !dealer.blackjack {
            print("Player wins")
            //flipCard(cardNum : 10)
            //userWinsRoundBJ(delay: dealerCardsDealt + 1)
        }
        if !user.blackjack && dealer.blackjack {
            print("Dealer has blackjack, but not shown yet")
            //dealerWinsRound(delay: dealerCardsDealt + 1)
        }
        
        if dealer.isFaceUpCardAce(){
            //go to insurance
            //splitAndInsurance.alpha = 1.0
            //splitAndInsurance.setTitle("Insurance", for: .normal)
            //splitAndInsurance.isUserInteractionEnabled = true
            print("player option to insurance")
        }
        if user.isBust(){
            //lose coins
            print("player lose")
            //flipCard(cardNum : 10)
            //dealerWinsRound(delay: dealerCardsDealt + 1)
        }else if user.isBJ(){
            //Need to check dealer hand
            print("player blackjack")
        }
    }
    @IBAction func deal(_ sender: Any) {
        let ref = Database.database().reference()
        ref.child("\(RoomCode.code)/turn").observeSingleEvent(of: .value, with: {(snapshot)in
            self.turn = snapshot.value! as! Int
        })
        if turn == 1{
            dealerDealt = true
            dealer = Dealer(card1: deck.deal(), card2: deck.deal())
            print(dealer.cards[0].getSymbol())
            print(dealer.cards[1].getSymbol())
            print("Dealer Hand Total \(dealer.getValue())")
            ref.child("\(RoomCode.code)/Dealer/cards").setValue("\(dealer.cards[0].getSymbol()) ; \(dealer.cards[1].getSymbol())")
            endTurn()
        }
        else if userBet > 0 && !dealtAlready && turn == userTurn{
            //Button stuff
            dealtAlready = true
            // Deal Cards
            user = User(card1: deck.deal(), card2: deck.deal())
            print(user.cards[0].getSymbol())
            print(user.cards[1].getSymbol())
            print("Player Hand Total \(user.getValue())")
            
            ref.child("\(RoomCode.code)/\(userName)/cards").setValue("\(user.cards[0].getSymbol()) ; \(user.cards[1].getSymbol())")
            
        }else if userBet > 0 && dealtAlready{
            
            // Set button text and interaction
            //self.doubleDown.alpha = 0
            //self.splitAndInsurance.alpha = 0
            //doubleDown.setTitle("", for: .normal)
            //doubleDown.isUserInteractionEnabled = false
            //splitAndInsurance.setTitle("", for: .normal)
            //splitAndInsurance.isUserInteractionEnabled = false
            
            user.addCard(card: deck.deal())
            print(user.cards[2].getSymbol())
            print("Player Hand Total \(user.getValue())")
            
            userCardsDealt += 1
            //animateCardUser(user: user, cardNum: userCardsDealt)
            
            if user.isBust(){
                print("Player lose")
                //flipCard(cardNum : 10)
                //dealerWinsRound(delay: dealerCardsDealt + 1)
                //lose coins
            }
            }else{
                endTurn()
                //endRound(delay: dealerCardsDealt + 1)
            }
    }
    @IBAction func stand(_ sender: Any) {
    }
    @IBAction func doubleUp(_ sender: Any) {
    }
    
}
