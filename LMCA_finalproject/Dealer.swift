//
//  Dealer.swift
//  LMCA_finalproject
//
//  Created by Arjun Nagpal on 4/30/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import Foundation
import UIKit

class Dealer {
    
    var cards = [Card]()
    var value = 0
    var blackjack = false
    var bust = false
    init(){
        
    }
    init(card1: Card, card2: Card){
        cards.append(card1)
        cards.append(card2)
    }
   func getValue() ->Int{
        self.value = 0
        for card in cards{
            if card.getSymbol() == "A" && self.value <= 10{
                self.value += 11
            }else{
                self.value += card.getValue()
            }
        }
        if self.value > 21{
            for card in cards{
                if card.getSymbol() == "A"{
                    self.value -= 10
                }
            }
        }
        if self.value == 21{
            self.blackjack = true
        }
        else if self.value > 21{
            self.bust = true
        }
        return self.value
    }
    func addCard(card: Card){
        cards.append(card)
    }
    func isBJ() -> Bool{
        return self.blackjack
    }
    func isFaceUpCardAce() -> Bool{
        return self.cards[0].getSymbol() == "A"
    }

    func isBust() -> Bool{
        return self.bust
    }
}


