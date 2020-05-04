//
//  Deck.swift
//  LMCA_finalproject
//
//  Created by Lisa Li on 4/24/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import Foundation
class Deck{
    var deck = [Card]()
    init(numofDeck : Int){
        for n in 1...numofDeck{
            let x = Card(value: 0, suit: "")
            for num in x.getRanks(){
                for suit in x.getSuits(){
                    let card = Card(value: num, suit: suit)
                    self.deck.append(card)
                }
            }
        }
    }
    func shuffle(){
        deck.shuffle()
    }
    func deal() -> Card{
        return deck.popLast()!
    }
}
