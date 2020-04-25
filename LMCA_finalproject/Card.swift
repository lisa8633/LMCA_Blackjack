//
//  Card.swift
//  LMCA_finalproject
//
//  Created by Lisa Li on 4/24/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import Foundation

class Card{
    var symbol = ""
    var suit = ""
    var value = 0
    var ranks = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    var suits = ["Spade", "Club", "Heart", "Diamond"]
    init(value: Int, suit: String){
        self.value = value
        self.suit = suit
    }
    func getSymbol() -> String {
        if self.value == 1{
            return "A"
        }
        else if self.value == 11{
            return "J"
        }
        else if self.value == 12{
            return "Q"
        }
        else if self.value == 13{
            return "K"
        }
        else{
            self.symbol = String(self.value)
            return self.symbol
        }
    }
    func getValue() -> Int{
        return self.value
    }
    func getSuit() -> String{
        return self.suit
    }
    func getRanks() ->Array<Int>{
        return ranks
    }
    func getSuits() ->Array<String>{
        return suits
    }
}
