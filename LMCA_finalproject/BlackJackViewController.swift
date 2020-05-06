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
    //Card Back
    @IBOutlet weak var deckTop: CardGraphics!
    //1
    @IBOutlet weak var card1Label: UILabel!
    @IBOutlet weak var card1Suit: SuitGraphics!
    @IBOutlet weak var card1BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics: CardGraphics!
    @IBOutlet weak var cardBack: CardGraphics!
    @IBOutlet weak var containerView: UIView!
    //2
    @IBOutlet weak var card2Label: UILabel!
    @IBOutlet weak var card2Suit: SuitGraphics!
    @IBOutlet weak var card2BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics2: CardGraphics!
    @IBOutlet weak var cardBack2: CardGraphics!
    @IBOutlet weak var containerView2: UIView!
    //3
    @IBOutlet weak var containerView3: UIView!
    @IBOutlet weak var card3Label: UILabel!
    @IBOutlet weak var card3Suit: SuitGraphics!
    @IBOutlet weak var card3BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics3: CardGraphics!
    @IBOutlet weak var cardBack3: CardGraphics!
    //4
    @IBOutlet weak var containerView4: UIView!
    @IBOutlet weak var card4Label: UILabel!
    @IBOutlet weak var card4Suit: SuitGraphics!
    @IBOutlet weak var card4BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics4: CardGraphics!
    @IBOutlet weak var cardBack4: CardGraphics!
    //5
    @IBOutlet weak var containerView5: UIView!
    @IBOutlet weak var card5Label: UILabel!
    @IBOutlet weak var card5Suit: SuitGraphics!
    @IBOutlet weak var card5BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics5: CardGraphics!
    @IBOutlet weak var cardBack5: CardGraphics!
    //6
    @IBOutlet weak var containerView6: UIView!
    @IBOutlet weak var card6Label: UILabel!
    @IBOutlet weak var card6Suit: SuitGraphics!
    @IBOutlet weak var card6BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics6: CardGraphics!
    @IBOutlet weak var cardBack6: CardGraphics!
    //7
    @IBOutlet weak var containerView7: UIView!
    @IBOutlet weak var card7Label: UILabel!
    @IBOutlet weak var card7Suit: SuitGraphics!
    @IBOutlet weak var card7BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics7: CardGraphics!
    @IBOutlet weak var cardBack7: CardGraphics!
    //8
    @IBOutlet weak var containerView8: UIView!
    @IBOutlet weak var card8Label: UILabel!
    @IBOutlet weak var card8Suit: SuitGraphics!
    @IBOutlet weak var card8BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics8: CardGraphics!
    @IBOutlet weak var cardBack8: CardGraphics!
    //9
    @IBOutlet weak var containerView9: UIView!
    @IBOutlet weak var card9Label: UILabel!
    @IBOutlet weak var card9Suit: SuitGraphics!
    @IBOutlet weak var card9BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics9: CardGraphics!
    @IBOutlet weak var cardBack9: CardGraphics!
    //10
    @IBOutlet weak var card10Label: UILabel!
    @IBOutlet weak var card10BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics10: CardGraphics!
    @IBOutlet weak var cardBack10: CardGraphics!
    @IBOutlet weak var containerView10: UIView!
    @IBOutlet weak var card10Suit: SuitGraphics!
    //11
    @IBOutlet weak var card11Label: UILabel!
    @IBOutlet weak var card11Suit: SuitGraphics!
    @IBOutlet weak var card11BigSuit: SuitGraphics!
    @IBOutlet weak var cardGraphics11: CardGraphics!
    @IBOutlet weak var cardBack11: CardGraphics!
    @IBOutlet weak var containerView11: UIView!
    //12
    @IBOutlet weak var containerView12: UIView!
    //13
    @IBOutlet weak var containerView13: UIView!
    //14
    @IBOutlet weak var containerView14: UIView!
    //15
    @IBOutlet weak var containerView15: UIView!
    //16
    @IBOutlet weak var containerView16: UIView!
    //17
    @IBOutlet weak var containerView17: UIView!
    //18
    @IBOutlet weak var containerView18: UIView!
    
    
    //MARK: Layout Constraints
    @IBOutlet weak var chipHeight: NSLayoutConstraint!
    //Card Back
    @IBOutlet weak var deckTopHeight: NSLayoutConstraint!
    @IBOutlet weak var deckTopHorizontal: NSLayoutConstraint!
    @IBOutlet weak var deckTopVertical: NSLayoutConstraint!
    //1
    @IBOutlet weak var cardHeight: NSLayoutConstraint!
    @IBOutlet weak var stackSuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight: NSLayoutConstraint!
    @IBOutlet weak var testHorizontal: NSLayoutConstraint!
    @IBOutlet weak var testVertical: NSLayoutConstraint!
    @IBOutlet weak var cardBackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerViewHeight: NSLayoutConstraint!
    //2
    @IBOutlet weak var card2Height: NSLayoutConstraint!
    @IBOutlet weak var stack2SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight2: NSLayoutConstraint!
    @IBOutlet weak var card2Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card2Vertical: NSLayoutConstraint!
    @IBOutlet weak var card2BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView2Height: NSLayoutConstraint!
    //3
    @IBOutlet weak var card3Height: NSLayoutConstraint!
    @IBOutlet weak var stack3SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight3: NSLayoutConstraint!
    @IBOutlet weak var card3Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card3Vertical: NSLayoutConstraint!
    @IBOutlet weak var card3BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView3Height: NSLayoutConstraint!
    //4
    @IBOutlet weak var card4Height: NSLayoutConstraint!
    @IBOutlet weak var stack4SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight4: NSLayoutConstraint!
    @IBOutlet weak var card4Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card4Vertical: NSLayoutConstraint!
    @IBOutlet weak var card4BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView4Height: NSLayoutConstraint!
    //5
    @IBOutlet weak var card5Height: NSLayoutConstraint!
    @IBOutlet weak var stack5SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight5: NSLayoutConstraint!
    @IBOutlet weak var card5Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card5Vertical: NSLayoutConstraint!
    @IBOutlet weak var card5BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView5Height: NSLayoutConstraint!
    //6
    @IBOutlet weak var card6Height: NSLayoutConstraint!
    @IBOutlet weak var stack6SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight6: NSLayoutConstraint!
    @IBOutlet weak var card6Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card6Vertical: NSLayoutConstraint!
    @IBOutlet weak var card6BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView6Height: NSLayoutConstraint!
    //7
    @IBOutlet weak var card7Height: NSLayoutConstraint!
    @IBOutlet weak var stack7SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight7: NSLayoutConstraint!
    @IBOutlet weak var card7Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card7Vertical: NSLayoutConstraint!
    @IBOutlet weak var card7BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView7Height: NSLayoutConstraint!
    //8
    @IBOutlet weak var card8Height: NSLayoutConstraint!
    @IBOutlet weak var stack8SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight8: NSLayoutConstraint!
    @IBOutlet weak var card8Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card8Vertical: NSLayoutConstraint!
    @IBOutlet weak var card8BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView8Height: NSLayoutConstraint!
    //9
    @IBOutlet weak var card9Height: NSLayoutConstraint!
    @IBOutlet weak var stack9SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight9: NSLayoutConstraint!
    @IBOutlet weak var card9Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card9Vertical: NSLayoutConstraint!
    @IBOutlet weak var card9BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView9Height: NSLayoutConstraint!
    //10
    @IBOutlet weak var card10Height: NSLayoutConstraint!
    @IBOutlet weak var stack10SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight10: NSLayoutConstraint!
    @IBOutlet weak var card10Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card10Vertical: NSLayoutConstraint!
    @IBOutlet weak var card10BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView10Height: NSLayoutConstraint!
    //11
    @IBOutlet weak var card11Height: NSLayoutConstraint!
    @IBOutlet weak var stack11SuitValueHeight: NSLayoutConstraint!
    @IBOutlet weak var bigSuitHeight11: NSLayoutConstraint!
    @IBOutlet weak var card11Horizontal: NSLayoutConstraint!
    @IBOutlet weak var card11Vertical: NSLayoutConstraint!
    @IBOutlet weak var card11BackHeight: NSLayoutConstraint!
    @IBOutlet weak var containerView11Height: NSLayoutConstraint!
    //12
    //13
    //14
    //15
    //16
    //17
    //18
    
    
    var deck = Deck(numofDeck: 6)
    
    var user = User()
    
    var dealer = Dealer()
    
    var userCardsDealt : Int!
    var dealerCardsDealt : Int!
    
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
        //balance.adjustsFontSizeToFitWidth=true;
        //balance.minimumScaleFactor=0.5;
        // Do any additional setup after loading the view.
        if self.view.bounds.height < 640.0 {
            chipHeight.constant = 50.0
        }
        //Card Back
        deckTopHeight.constant = self.view.bounds.height * 0.15 + 16
        deckTopVertical.constant = -self.view.bounds.height * 0.07 - 13
        //1
        cardHeight.constant = self.view.bounds.height * 0.15 + 16
        cardBackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerViewHeight.constant = self.view.bounds.height * 0.15 + 16
        testVertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stackSuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight.constant = self.view.bounds.height * 0.07 + 3
        card1Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //2
        card2Height.constant = self.view.bounds.height * 0.15 + 16
        card2BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView2Height.constant = self.view.bounds.height * 0.15 + 16
        card2Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack2SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight2.constant = self.view.bounds.height * 0.07 + 3
        card2Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //3
        card3Height.constant = self.view.bounds.height * 0.15 + 16
        card3BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView3Height.constant = self.view.bounds.height * 0.15 + 16
        card3Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack3SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight3.constant = self.view.bounds.height * 0.07 + 3
        card3Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //4
        card4Height.constant = self.view.bounds.height * 0.15 + 16
        card4BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView4Height.constant = self.view.bounds.height * 0.15 + 16
        card4Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack4SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight4.constant = self.view.bounds.height * 0.07 + 3
        card4Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //5
        card5Height.constant = self.view.bounds.height * 0.15 + 16
        card5BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView5Height.constant = self.view.bounds.height * 0.15 + 16
        card5Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack5SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight5.constant = self.view.bounds.height * 0.07 + 3
        card5Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //6
        card6Height.constant = self.view.bounds.height * 0.15 + 16
        card6BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView6Height.constant = self.view.bounds.height * 0.15 + 16
        card6Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack6SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight6.constant = self.view.bounds.height * 0.07 + 3
        card6Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //7
        card7Height.constant = self.view.bounds.height * 0.15 + 16
        card7BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView7Height.constant = self.view.bounds.height * 0.15 + 16
        card7Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack7SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight7.constant = self.view.bounds.height * 0.07 + 3
        card7Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //8
        card8Height.constant = self.view.bounds.height * 0.15 + 16
        card8BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView8Height.constant = self.view.bounds.height * 0.15 + 16
        card8Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack8SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight8.constant = self.view.bounds.height * 0.07 + 3
        card8Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //9
        card9Height.constant = self.view.bounds.height * 0.15 + 16
        card9BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView9Height.constant = self.view.bounds.height * 0.15 + 16
        card9Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack9SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight9.constant = self.view.bounds.height * 0.07 + 3
        card9Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //10
        card10Height.constant = self.view.bounds.height * 0.15 + 16
        card10BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView10Height.constant = self.view.bounds.height * 0.15 + 16
        card10Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack10SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight10.constant = self.view.bounds.height * 0.07 + 3
        card10Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //11
        card11Height.constant = self.view.bounds.height * 0.15 + 16
        card11BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView11Height.constant = self.view.bounds.height * 0.15 + 16
        card11Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack11SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight11.constant = self.view.bounds.height * 0.07 + 3
        card11Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //12
        /*card12Height.constant = self.view.bounds.height * 0.15 + 16
        card12BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView12Height.constant = self.view.bounds.height * 0.15 + 16
        card12Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack12SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight12.constant = self.view.bounds.height * 0.07 + 3
        card12Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //13
        card13Height.constant = self.view.bounds.height * 0.15 + 16
        card13BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView13Height.constant = self.view.bounds.height * 0.15 + 16
        card13Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack13SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight13.constant = self.view.bounds.height * 0.07 + 3
        card13Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //14
        card14Height.constant = self.view.bounds.height * 0.15 + 16
        card14BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView14Height.constant = self.view.bounds.height * 0.15 + 16
        card14Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack14SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight14.constant = self.view.bounds.height * 0.07 + 3
        card14Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //15
        card15Height.constant = self.view.bounds.height * 0.15 + 16
        card15BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView15Height.constant = self.view.bounds.height * 0.15 + 16
        card15Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack15SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight15.constant = self.view.bounds.height * 0.07 + 3
        card15Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //16
        card16Height.constant = self.view.bounds.height * 0.15 + 16
        card16BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView16Height.constant = self.view.bounds.height * 0.15 + 16
        card16Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack16SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight16.constant = self.view.bounds.height * 0.07 + 3
        card16Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //17
        card17Height.constant = self.view.bounds.height * 0.15 + 16
        card17BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView17Height.constant = self.view.bounds.height * 0.15 + 16
        card2Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack17SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight17.constant = self.view.bounds.height * 0.07 + 3
        card17Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        //18
        card18Height.constant = self.view.bounds.height * 0.15 + 16
        card18BackHeight.constant = self.view.bounds.height * 0.15 + 16
        containerView18Height.constant = self.view.bounds.height * 0.15 + 16
        card18Vertical.constant = -self.view.bounds.height * 0.07 - 13
        
        stack18SuitValueHeight.constant = self.view.bounds.height * 0.035 - 1
        bigSuitHeight18.constant = self.view.bounds.height * 0.07 + 3
        card18Label.font = UIFont.systemFont(ofSize: self.view.bounds.height * 0.04 + 0.16, weight: .heavy)
        */
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
        userCardsDealt = 0
        dealerCardsDealt = 0
        
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
        
        stand.setTitle("Stand", for: .normal)
        stand.isUserInteractionEnabled = false
        
        doubleDown.setTitle("Double Down", for: .normal)
        doubleDown.isUserInteractionEnabled = false
        
        splitAndInsurance.setTitle("Split/Insurance", for: .normal)
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
            balance.text = "Balance: $\(currentBalance!)"
        }
    }
    func userWinsRound(){
        dealtAlready = false
        self.deck = Deck(numofDeck: 6)
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
        updatePlayerBalance(updatedBalance: currentBalance)
        flipAllCardBack()
        returnCards()
        
    }
    func userWinsRoundBJ(){
        dealtAlready = false
        self.deck = Deck(numofDeck: 6)
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
        updatePlayerBalance(updatedBalance: currentBalance)
        flipAllCardBack()
        returnCards()
        
    }
    
    func dealerWinsRound(){
        dealtAlready = false
        self.deck = Deck(numofDeck: 6)
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
        updatePlayerBalance(updatedBalance: currentBalance)
        flipAllCardBack()
        returnCards()
    }
    
    
    func endRound(){
        dealtAlready = false
        self.deck = Deck(numofDeck: 6)
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
        updatePlayerBalance(updatedBalance: currentBalance)
        flipAllCardBack()
        returnCards()
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
            
            userCardsDealt += 1
            animateCardUser(user: user, cardNum: userCardsDealt)
            
            dealerCardsDealt += 1
            animateCardDealer(dealer: dealer, cardNum: dealerCardsDealt)
            
            userCardsDealt += 1
            animateCardUser(user: user, cardNum: userCardsDealt)
            
            dealerCardsDealt += 1
            animateCardDealer(dealer: dealer, cardNum: dealerCardsDealt)
            
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
            
            userCardsDealt += 1
            animateCardUser(user: user, cardNum: userCardsDealt)
            
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
        balance.text = "Balance: \(currentBalance!)"
        user.addCard(card: deck.deal())
        cardsDealt += 1
        print(user.cards[2].getSymbol())
        
        userCardsDealt += 1
        animateCardUser(user: user, cardNum: userCardsDealt)
        
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
            
            dealerCardsDealt += 1
            animateCardDealer(dealer: dealer, cardNum: dealerCardsDealt)
            
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

    func updatePlayerBalance(updatedBalance: Double) {
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
    
    func animateCardUser(user: User, cardNum: Int) {
        let num = cardNum - 1
        if user.cards[num].getSuit() == "Heart" || user.cards[num].getSuit() == "Diamond" {
            if cardNum == 1 {
                card1Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 2 {
                card2Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 3 {
                card3Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 4 {
                card4Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 5 {
                card5Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 6 {
                card6Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 7 {
                card7Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 8 {
                card8Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 9 {
                card9Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            
        }
        else {
            if cardNum == 1 {
                card1Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 2 {
                card2Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 3 {
                card3Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 4 {
                card4Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 5 {
                card5Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 6 {
                card6Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 7 {
                card7Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 8 {
                card8Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 9 {
                card9Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
        }
        if cardNum == 1 {
            card1Label.text = user.cards[num].getSymbol()
            card1Suit.suit = user.cards[num].getSuit()
            card1BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.testVertical.constant += self.view.bounds.height * 0.25 + 39
                self.testHorizontal.constant -= self.view.bounds.height * 0.07 - 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 2 {
            card2Label.text = user.cards[num].getSymbol()
            card2Suit.suit = user.cards[num].getSuit()
            card2BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 3.0, options: .curveEaseInOut, animations: {
                self.card2Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card2Horizontal.constant += self.view.bounds.height * 0.07 - 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 3 {
            card3Label.text = user.cards[num].getSymbol()
            card3Suit.suit = user.cards[num].getSuit()
            card3BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.card2Horizontal.constant = 0
                self.card3Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card3Horizontal.constant += self.view.bounds.height * 0.07 - 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 4 {
            card4Label.text = user.cards[num].getSymbol()
            card4Suit.suit = user.cards[num].getSuit()
            card4BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.card2Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card3Horizontal.constant -= 2 * (self.view.bounds.height * 0.07 - 3) / 3
                self.card4Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card4Horizontal.constant += self.view.bounds.height * 0.07 - 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 5 {
            card5Label.text = user.cards[num].getSymbol()
            card5Suit.suit = user.cards[num].getSuit()
            card5BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.testHorizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card2Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card3Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card4Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card5Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card5Horizontal.constant += 4 * (self.view.bounds.height * 0.07 - 3) / 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 6 {
            card6Label.text = user.cards[num].getSymbol()
            card6Suit.suit = user.cards[num].getSuit()
            card6BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.testHorizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card2Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card3Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card4Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card5Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card6Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card6Horizontal.constant += 5 * (self.view.bounds.height * 0.07 - 3) / 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 7 {
            card7Label.text = user.cards[num].getSymbol()
            card7Suit.suit = user.cards[num].getSuit()
            card7BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.testHorizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card2Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card3Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card4Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card5Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card6Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card7Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card7Horizontal.constant += 6 * (self.view.bounds.height * 0.07 - 3) / 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 8 {
            card8Label.text = user.cards[num].getSymbol()
            card8Suit.suit = user.cards[num].getSuit()
            card8BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.testHorizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card2Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card3Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card4Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card5Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card6Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card7Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card8Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card8Horizontal.constant += 7 * (self.view.bounds.height * 0.07 - 3) / 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        else if cardNum  == 9 {
            card8Label.text = user.cards[num].getSymbol()
            card8Suit.suit = user.cards[num].getSuit()
            card8BigSuit.suit = user.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseInOut, animations: {
                self.testHorizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card2Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card3Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card4Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card5Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card6Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card7Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card8Horizontal.constant -= (self.view.bounds.height * 0.07 - 3) / 3
                self.card9Vertical.constant += self.view.bounds.height * 0.25 + 39
                self.card9Horizontal.constant += 8 * (self.view.bounds.height * 0.07 - 3) / 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum) }
            })
        }
        
    }
    
    func animateCardDealer(dealer: Dealer, cardNum: Int) {
        let num = cardNum - 1
        if dealer.cards[num].getSuit() == "Heart" || dealer.cards[num].getSuit() == "Diamond" {
            if cardNum == 1 {
                card10Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 2 {
                card11Label.textColor = UIColor(red: 0.749, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            
        }
        else {
            if cardNum == 1 {
                card10Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
            else if cardNum == 2 {
                card11Label.textColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
            }
        }
        if cardNum == 1 {
            card10Label.text = dealer.cards[num].getSymbol()
            card10Suit.suit = dealer.cards[num].getSuit()
            card10BigSuit.suit = dealer.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 1.5, options: .curveEaseInOut, animations: {
                self.card10Vertical.constant += -self.view.bounds.height * 0.25 - 20
                self.card10Horizontal.constant -= self.view.bounds.height * 0.07 - 3
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
        else if cardNum  == 2 {
            card11Label.text = dealer.cards[num].getSymbol()
            card11Suit.suit = dealer.cards[num].getSuit()
            card11BigSuit.suit = dealer.cards[num].getSuit()
            UIView.animate(withDuration: 1.0, delay: 4.5, options: .curveEaseInOut, animations: {
                self.card11Vertical.constant += -self.view.bounds.height * 0.25 - 20
                self.card11Horizontal.constant += self.view.bounds.height * 0.07 - 3
                self.view.layoutIfNeeded()
            }, completion: {finished in
                if finished { self.flipCard(cardNum: cardNum + 9) }
            })
        }
    }
    
    func flipCard(cardNum : Int) {
        if cardNum == 1 {
            UIView.transition(from: cardBack, to: cardGraphics, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 2 {
            UIView.transition(from: cardBack2, to: cardGraphics2, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 3 {
            UIView.transition(from: cardBack3, to: cardGraphics3, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 4 {
            UIView.transition(from: cardBack4, to: cardGraphics4, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 5 {
            UIView.transition(from: cardBack5, to: cardGraphics5, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 6 {
            UIView.transition(from: cardBack6, to: cardGraphics6, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 7 {
            UIView.transition(from: cardBack7, to: cardGraphics7, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 8 {
            UIView.transition(from: cardBack8, to: cardGraphics8, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 9 {
            UIView.transition(from: cardBack9, to: cardGraphics9, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 10 {
            UIView.transition(from: cardBack10, to: cardGraphics10, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 11 {
            UIView.transition(from: cardBack11, to: cardGraphics11, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        /*else if cardNum == 12 {
            UIView.transition(from: cardBack12, to: cardGraphics12, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 13 {
            UIView.transition(from: cardBack13, to: cardGraphics13, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 14 {
            UIView.transition(from: cardBack14, to: cardGraphics14, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 15 {
            UIView.transition(from: cardBack15, to: cardGraphics15, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 16 {
            UIView.transition(from: cardBack16, to: cardGraphics16, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 17 {
            UIView.transition(from: cardBack17, to: cardGraphics17, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }
        else if cardNum == 18 {
            UIView.transition(from: cardBack18, to: cardGraphics18, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        }*/
        
    }
    
    func flipAllCardBack() {
        UIView.transition(from: cardGraphics, to: cardBack, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics2, to: cardBack2, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics3, to: cardBack3, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics4, to: cardBack4, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics5, to: cardBack5, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics6, to: cardBack6, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics7, to: cardBack7, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics8, to: cardBack8, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics9, to: cardBack9, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics10, to: cardBack10, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics11, to: cardBack11, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        /*UIView.transition(from: cardGraphics12, to: cardBack12, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics13, to: cardBack13, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics14, to: cardBack14, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics15, to: cardBack15, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics16, to: cardBack16, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics17, to: cardBack17, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
        UIView.transition(from: cardGraphics18, to: cardBack18, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)*/

        
    }
    
    func returnCards() {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.testVertical.constant = -75
            self.testHorizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card2Vertical.constant = -75
            self.card2Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card3Vertical.constant = -75
            self.card3Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card4Vertical.constant = -75
            self.card4Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card5Vertical.constant = -75
            self.card5Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card6Vertical.constant = -75
            self.card6Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card7Vertical.constant = -75
            self.card7Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card8Vertical.constant = -75
            self.card8Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card9Vertical.constant = -75
            self.card9Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card10Vertical.constant = -75
            self.card10Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card11Vertical.constant = -75
            self.card11Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        /*UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card12Vertical.constant = -75
            self.card12Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card13Vertical.constant = -75
            self.card13Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card14Vertical.constant = -75
            self.card14Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card15Vertical.constant = -75
            self.card15Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card16Vertical.constant = -75
            self.card16Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card17Vertical.constant = -75
            self.card17Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1.0, delay: 1.0, options: .curveEaseInOut, animations: {
            self.card18Vertical.constant = -75
            self.card18Horizontal.constant = 0
            self.view.layoutIfNeeded()
        }, completion: nil)*/
        
        userCardsDealt = 0
        dealerCardsDealt = 0
    }
}
