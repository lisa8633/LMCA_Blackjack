//
//  BlackJackViewController.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/25/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit
import CoreData


class BlackJackViewController: UIViewController {
    
    var deck = Deck()
    
    var user = User()
    
    var dealer = Dealer()
    
    var userBet : Double = 0 // initial user bet
    
    var players = [NSManagedObject]()
    var currentBalance : Double! //Set using Core Data
    var username : String!
    
    var dealtAlready = false // Checks if user has been dealt initial cards
    var cardsDealt = 0
    var insuranceBet = 0

    @IBOutlet weak var oneBet: UIButton!
    @IBOutlet weak var fiveBet: UIButton!
    @IBOutlet weak var tenBet: UIButton!
    @IBOutlet weak var twentyFiveBet: UIButton!
    @IBOutlet weak var hundredBet: UIButton!
    @IBOutlet weak var dealAndHit: UIButton!
    @IBOutlet weak var stand: UIButton!
    @IBOutlet weak var doubleDown: UIButton!
    @IBOutlet weak var splitAndInsurance: UIButton!
    @IBOutlet weak var resetBet: UIButton!
    
    
    @IBOutlet weak var totalBet: UILabel!
    @IBOutlet weak var balance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
            let player = players[0]
            self.username = player.value(forKey: "name") as? String
            self.currentBalance = player.value(forKey: "coins") as? Double
            
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }

        //Setting initial values in labels
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance!)"
        
        //setting initial button interaction
        dealAndHit.setTitle("Deal", for: .normal)
        dealAndHit.isUserInteractionEnabled = true
        
        stand.setTitle("", for: .normal)
        stand.isUserInteractionEnabled = false
        
        doubleDown.setTitle("", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        
        splitAndInsurance.setTitle("", for: .normal)
        splitAndInsurance.isUserInteractionEnabled = false
        
        resetBet.setTitle("Reset", for: .normal)
        resetBet.isUserInteractionEnabled = true
        
        
        //setting initial bet button interaction
        oneBet.isUserInteractionEnabled = true
        fiveBet.isUserInteractionEnabled = true
        tenBet.isUserInteractionEnabled = true
        twentyFiveBet.isUserInteractionEnabled = true
        hundredBet.isUserInteractionEnabled = true
        
        deck.shuffle()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func SingleEndGame(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "End Game?", message: "The current game will be terminated.", preferredStyle: UIAlertController.Style.alert)

        let okAction = UIAlertAction(title: "Yes", style: .default) {
            (UIAlertAction) -> Void in
            self.performSegue(withIdentifier: "unwindEndGame", sender: self)
            NotificationCenter.default.removeObserver(self)

        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
        style: .cancel)
        
        refreshAlert.addAction(okAction)
        refreshAlert.addAction(cancelAction)
        
        present(refreshAlert, animated: true)
    }

    @IBAction func addOne(_ sender: UIButton) {
        if currentBalance > 0 {
            userBet += 1
            currentBalance -= 1
            totalBet.text = "Bet: \(userBet)"
            balance.text = "Balance: \(currentBalance!)"
        }
    }
    
    @IBAction func addFive(_ sender: UIButton) {
        if currentBalance > 4 {
            userBet += 5
            currentBalance -= 5
            totalBet.text = "Bet: \(userBet)"
            balance.text = "Balance: \(currentBalance!)"
        }
    }
    
    @IBAction func addTen(_ sender: UIButton) {
        if currentBalance > 9 {
            userBet += 10
            currentBalance -= 10
            totalBet.text = "Bet: \(userBet)"
            balance.text = "Balance: \(currentBalance!)"
        }
    }
    
    @IBAction func addTwentyFive(_ sender: Any) {
        if currentBalance > 24 {
            userBet += 25
            currentBalance -= 25
            totalBet.text = "Bet: \(userBet)"
            balance.text = "Balance: \(currentBalance!)"
        }
    }
    
    @IBAction func addHundred(_ sender: UIButton) {
        if currentBalance > 99 {
            userBet += 100
            currentBalance -= 100
            totalBet.text = "Bet: \(userBet)"
            balance.text = "Balance: \(currentBalance!)"
        }
    }
    func userWinsRound(){
        dealtAlready = false
        self.deck = Deck()
        deck.shuffle()
        // Reset button text and interaction
        dealAndHit.setTitle("Deal", for: .normal)
        stand.setTitle("", for: .normal)
        stand.isUserInteractionEnabled = false
        resetBet.isUserInteractionEnabled = true
        doubleDown.setTitle("", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        
        currentBalance += userBet * 2
        userBet = 0
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance!)"
        
    }
    func userWinsRoundBJ(){
        dealtAlready = false
        self.deck = Deck()
        deck.shuffle()
        // Reset button text and interaction
        dealAndHit.setTitle("Deal", for: .normal)
        stand.setTitle("", for: .normal)
        stand.isUserInteractionEnabled = false
        resetBet.isUserInteractionEnabled = true
        doubleDown.setTitle("", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        
        currentBalance += userBet * 2 + userBet / 2
        userBet = 0
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance!)"
        
    }
    
    func dealerWinsRound(){
        dealtAlready = false
        self.deck = Deck()
        deck.shuffle()
        // Reset button text and interaction
        dealAndHit.setTitle("Deal", for: .normal)
        stand.setTitle("", for: .normal)
        stand.isUserInteractionEnabled = false
        resetBet.isUserInteractionEnabled = true
        doubleDown.setTitle("", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        
        userBet = 0
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance!)"
    }
    
    
    func endRound(){
        dealtAlready = false
        self.deck = Deck()
        deck.shuffle()
        // Reset button text and interaction
        dealAndHit.setTitle("Deal", for: .normal)
        stand.setTitle("", for: .normal)
        stand.isUserInteractionEnabled = false
        resetBet.isUserInteractionEnabled = true
        doubleDown.setTitle("", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        
        currentBalance += userBet
        userBet = 0
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance!)"
    }
    
    @IBAction func dealOrHitAction(_ sender: UIButton) {
        if userBet > 0 && !dealtAlready{
            // Set button text and interaction
            dealAndHit.setTitle("Hit", for: .normal)
            stand.setTitle("Stand", for: .normal)
            stand.isUserInteractionEnabled = true
            dealtAlready = true
            resetBet.isUserInteractionEnabled = false
            doubleDown.setTitle("Double Down", for: .normal)
            doubleDown.isUserInteractionEnabled = true
            // Deal Cards
            user = User(card1: deck.deal(), card2: deck.deal())
            print(user.cards[0].getSymbol())
            print(user.cards[1].getSymbol())
            print("Player Hand Total \(user.getValue())")
            dealer = Dealer(card1: deck.deal(), card2: deck.deal())
            print(dealer.cards[0].getSymbol())
            print(dealer.cards[1].getSymbol())
            print("Dealer Hand Total \(dealer.getValue())")
            cardsDealt = 4
            // begin game and deal cards
            if user.blackjack && dealer.blackjack {
                print("tie")
                endRound()
            }
            if user.blackjack && !dealer.blackjack {
                print("Player wins")
                userWinsRoundBJ()
            }
            if !user.blackjack && dealer.blackjack {
                print("Dealer has blackjack, but not shown yet")
                //dealerWinsRound()
            }
            
            if dealer.isFaceUpCardAce(){
                //go to insurance
                splitAndInsurance.setTitle("Insurance", for: .normal)
                splitAndInsurance.isUserInteractionEnabled = true
                print("player option to insurance")
            }
            if user.isBust(){
                //lose coins
                print("player lose")
                dealerWinsRound()
            }else if user.isBJ(){
                //Need to check dealer hand
                print("player blackjack")
            }
        }else if userBet > 0 && dealtAlready{
            
            // Set button text and interaction
            doubleDown.setTitle("", for: .normal)
            doubleDown.isUserInteractionEnabled = false
            splitAndInsurance.setTitle("", for: .normal)
            splitAndInsurance.isUserInteractionEnabled = false
            
            user.addCard(card: deck.deal())
            cardsDealt += 1
            print(user.cards[2].getSymbol())
            print("Player Hand Total \(user.getValue())")
            if user.isBust(){
                print("Player lose")
                dealerWinsRound()
                //lose coins
            }
        }else{
            //end game?
            endRound()
        }
    }
    @IBAction func doubleDownAction(_ sender: UIButton) {
        // double bet
        currentBalance = currentBalance - userBet
        userBet = userBet * 2
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance)"
        user.addCard(card: deck.deal())
        cardsDealt += 1
        print(user.cards[2].getSymbol())
        print("Player Hand Total \(user.getValue())")
        if user.isBust(){
            print("Player lose")
            dealerWinsRound()
            //lose coins
        }else{
            standFunction()
        }
    }
    
    @IBAction func standAction(_ sender: UIButton) {
        standFunction()
    }
    
    func standFunction() {
        // Set button text and interaction
        doubleDown.setTitle("", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        splitAndInsurance.setTitle("", for: .normal)
        splitAndInsurance.isUserInteractionEnabled = false
        
        //dealer's turn
        if dealer.isBust(){
            //player wins
            print("Player wins")
            userWinsRound()
        }
        while dealer.getValue() <= 16{
            dealer.addCard(card: deck.deal())
            cardsDealt += 1
            print(dealer.cards[dealer.cards.count-1].getSymbol())
            print("Dealer Hand Total \(dealer.getValue())")
            if dealer.isBust(){
                print("Player wins")
                userWinsRound()
                //player wins
            }
        }
        //didnt bust and dealer and player still in
        if !dealer.isBust() && !user.isBust(){
            if dealer.getValue() > user.getValue(){
                print("dealer wins")
                dealerWinsRound()
                //dealer wins
            }else if dealer.getValue() == user.getValue(){
                print("tie")
                endRound()
                // player ties
            }else{
                print("player wins")
                userWinsRound()
            }
        }
    }
    
    @IBAction func splitOrInsuranceAction(_ sender: UIButton) {
        // Set button text and interaction
        splitAndInsurance.setTitle("", for: .normal)
        splitAndInsurance.isUserInteractionEnabled = false
        
        if (dealer.blackjack) {
            // Pay insurnce if dealer has blackjack
            currentBalance += userBet
            print("Dealer has blackjack so pay insurance")
        } else {
            currentBalance -= userBet/2
            print("Dealer does not have blackjack so lose insurance")
        }
        balance.text = "Balance: \(currentBalance!)"
    }
    
    @IBAction func resetBetAction(_ sender: UIButton) {
        currentBalance += userBet
        userBet = 0
        totalBet.text = "Bet: \(userBet)"
        balance.text = "Balance: \(currentBalance!)"
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func updatePlayerBalance(updatedBalance: Int64) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
            
        //2
        let player = players[0]
        player.setValue(updatedBalance, forKeyPath: "coins")
        
        //3
        do {
            try managedContext.save()
            let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Player")
            players = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
}
