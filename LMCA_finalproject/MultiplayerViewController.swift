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
    var player2 = User()
    var dealer = Dealer()
    var num = 0
    var currentBalance = 0.0
    
    var userCardsDealt : Int!
    var dealerCardsDealt : Int!
    
    var userBet : Double = 0 // initial user bet
    var dealtAlready = false
    var dealerDealt = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userName = RoomCode.name
        currentBalance = RoomCode.coins
       
        // Database
        let ref = Database.database().reference()
        ref.child("\(RoomCode.code)").observeSingleEvent(of: .value, with: {(snapshot)in
            let playerData = snapshot.value!
            //print(playerData)
        })
        ref.child("\(RoomCode.code)/\(userName)/num").observeSingleEvent(of: .value, with: {(snapshot)in
            //if snapshot == null{
                self.userTurn = snapshot.value! as! Int
                if self.userTurn == 3 || self.userTurn == 4{
                    ref.child("\(RoomCode.code)/Dealer/cards").observeSingleEvent(of: .value) { (snapshot) in
                    let data = snapshot.value! as! String
                    if data != "none"{
                        self.dealer = Dealer()
                        self.findDealer(data: data)
                        if self.dealer.isBust(){
                            print("Player wins")
                        }
                        else if !self.dealer.isBust() && !self.user.isBust(){
                            if self.dealer.getValue() > self.user.getValue(){
                                print("dealer wins")
                                //dealerWinsRound(delay: dealerCardsDealt + 1)
                                //dealer wins
                            }else if self.dealer.getValue() == self.user.getValue(){
                                print("tie")
                                //self.endRound(delay: self.dealerCardsDealt + 1)
                                // player ties
                            }else{
                                print("player wins")
                                //userWinsRound(delay: dealerCardsDealt + 1)
                            }
                        }
                    }
                }
                }
            //}
        })
        ref.child("\(RoomCode.code)/players").observeSingleEvent(of: .value, with: {(snapshot)in
            let players = snapshot.value! as! Int
            RoomCode.players = players
        })
        ref.child("\(RoomCode.code)/turn").observeSingleEvent(of: .value) { (snapshot) in
            self.turn = snapshot.value! as! Int
            
            if self.turn == 1{
                self.dealer = Dealer()
                    self.dealer = Dealer(card1: self.deck.deal(), card2: self.deck.deal())
                    print(self.dealer.cards[0].getSymbol())
                    print(self.dealer.cards[1].getSymbol())
                    print("Dealer Hand Total \(self.dealer.getValue())")
                    ref.child("\(RoomCode.code)/Dealer/cards").setValue("\(self.dealer.cards[0].getValue()),\(self.dealer.cards[0].getSuit());\(self.dealer.cards[1].getValue()),\(self.dealer.cards[1].getSuit())")
                    self.turn += 1
                    ref.child("\(RoomCode.code)/turn").setValue(self.turn)
                    
            }
            else if self.turn == (RoomCode.players+2){
                //everyone is done
                if self.dealer.isBust(){
                    //player wins
                    print("Player wins")
                    //flipCard(cardNum : 10)
                    //userWinsRound(delay: dealerCardsDealt + 1)
                }
                while self.dealer.getValue() <= 16{
                    self.dealer.addCard(card: self.deck.deal())
                    print(self.dealer.cards[self.dealer.cards.count-1].getSymbol())
                    var str = ""
                    for c in self.dealer.cards{
                        str += "\(c.getValue()),\(c.getSuit());"
                    }
                    let ref = Database.database().reference()
                    ref.child("\(RoomCode.code)/Dealer/cards").setValue("\(str)")
                    //animateCardDealer(dealer: dealer, cardNum: dealerCardsDealt)
                    
                    print("Dealer Hand Total \(self.dealer.getValue())")
                    if self.dealer.isBust(){
                        print("Player wins")
                        //userWinsRound(delay: dealerCardsDealt + 1)
                        //player wins
                    }
                }
                //didnt bust and dealer and player still in
                if !self.dealer.isBust() && !self.user.isBust(){
                    if self.dealer.getValue() > self.user.getValue(){
                        print("dealer wins")
                        //dealerWinsRound(delay: dealerCardsDealt + 1)
                        //dealer wins
                    }else if self.dealer.getValue() == self.user.getValue(){
                        print("tie")
                        //self.endRound(delay: self.dealerCardsDealt + 1)
                        // player ties
                    }else{
                        print("player wins")
                        //userWinsRound(delay: dealerCardsDealt + 1)
                    }
                }
                self.turn = 1
                ref.child("\(RoomCode.code)/turn").setValue(self.turn)
                ref.child("\(RoomCode.code)/\(RoomCode.name)/cards").setValue("none")
                self.dealtAlready = false
                print("GAME OVER")
                self.viewDidLoad()
            }
        }

        
            self.userBet = 10
    }
    func findDealer(data: String){
            if data != "none"{
                       /*
                       let start = data.firstIndex(of: ",")!
                       let index = data.firstIndex(of: ";")!
                       let v1:Int? = Int("\(data[..<start])")
                       let s1:String? = String(data[data.index(after: start) ..< index])
                       
                       let second = data.lastIndex(of: ",")!
                       let v2:Int? = Int("\(data[data.index(after: index) ..< second])")
                       let s2:String? = String(data[data.index(after : second)...])
                       let card1 = Card(value: v1!, suit: s1!)
                       let card2 = Card(value: v2!, suit: s2!)
                       self.dealer = Dealer(card1: card1, card2: card2)
                       print(self.dealer.cards)
        */
                       if data[data.index(before: data.endIndex)] == ";"{
                           data.dropLast()
                       }
                       let index = data.firstIndex(of: ";")!
                       let sub1 = "\(data[..<index])"
                       self.addDealer(data: sub1)
                       var sub2 = "\(data[data.index(after: index)...])"
                       while sub2.contains(";"){
                           
                           let index = data.firstIndex(of: ";")!
                           let sub1 = "\(sub2[..<index])"
                           self.addDealer(data: sub1)
                           sub2 = "\(sub2[sub2.index(after: index)...])"
                       }
                self.addDealer(data: sub2)
            }
                   
               
    }
    func addDealer(data: String){
        let start = data.firstIndex(of: ",")!
        let v1:Int? = Int("\(data[..<start])")
        let s1:String? = String(data[data.index(after:start)...])
        let card = Card(value: v1!, suit: s1!)
        self.dealer.addCard(card: card)
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
        self.viewDidLoad()
        let ref = Database.database().reference()
        ref.child("\(RoomCode.code)/turn").setValue(turn)
        //update turn
        
        if user.blackjack && dealer.blackjack {
            print("tie")
            //flipCard(cardNum : 10)
            endRound(delay: dealerCardsDealt + 1)
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
    func endRound(delay: Int){
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(delay-2)) {
            //self.animateWinnerDisplay(winner: "Tie!")
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(2)) {
                self.dealtAlready = false
                self.deck = Deck(numofDeck: 6)
                self.deck.shuffle()
                // Reset button text and interaction
                /*
                self.dealAndHit.setTitle("Deal", for: .normal)
                self.stand.setTitle("", for: .normal)
                self.stand.isUserInteractionEnabled = false
                self.resetBet.isUserInteractionEnabled = true
                self.doubleDown.setTitle("", for: .normal)
                self.doubleDown.isUserInteractionEnabled = false
                self.stand.alpha = 0
                self.doubleDown.alpha = 0
                self.splitAndInsurance.alpha = 0
                
                self.currentBalance += self.userBet
                self.userBet = 0
                self.totalBet.text = "Bet: \(self.userBet)"
                self.balance.text = "Balance: \(self.currentBalance!)"
                self.updatePlayerBalance(updatedBalance: self.currentBalance)
                //self.flipAllCardBack()
                self.returnCards()
                */
            }
        }
    }
    @IBAction func deal(_ sender: Any) {
        let ref = Database.database().reference()
        if userBet > 0 && !dealtAlready && turn == userTurn{
            //Button stuff
            dealtAlready = true
            // Deal Cards
            user = User(card1: deck.deal(), card2: deck.deal())
            print(user.cards[0].getSymbol())
            print(user.cards[1].getSymbol())
            print("Player Hand Total \(user.getValue())")
            
            ref.child("\(RoomCode.code)/\(userName)/cards").setValue("\(self.user.cards[0].getValue()),\(self.user.cards[0].getSuit());\(self.user.cards[1].getValue()),\(self.user.cards[1].getSuit())")
            
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
            var str = ""
            for c in self.user.cards{
                str += "\(c.getValue()),\(c.getSuit());"
            }
            ref.child("\(RoomCode.code)/\(userName)/cards").setValue(str)
            
            //userCardsDealt += 1
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
        self.endTurn()
    }
    @IBAction func doubleUp(_ sender: Any) {
        let ref = Database.database().reference()
        currentBalance = currentBalance - userBet
        userBet = userBet * 2
        //totalBet.text = "Bet: \(userBet)"
        //balance.text = "Balance: \(currentBalance!)"
        user.addCard(card: deck.deal())
        //cardsDealt += 1
        print(user.cards[2].getSymbol())
        var str = ""
        for c in self.user.cards{
            str += "\(c.getValue()),\(c.getSuit());"
        }
        ref.child("\(RoomCode.code)/\(userName)/cards").setValue(str)
        //userCardsDealt += 1
        //animateCardUser(user: user, cardNum: userCardsDealt)
        
        print("Player Hand Total \(user.getValue())")
        if user.isBust(){
            print("Player lose")
            //flipCard(cardNum : 10)
            //dealerWinsRound(delay: dealerCardsDealt + 1)
            //lose coins
        }else{
            self.endTurn()
        }
    }
    
}
