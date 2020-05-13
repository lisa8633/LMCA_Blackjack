//
//  RulesViewController.swift
//  LMCA_finalproject
//
//  Created by Yipeng Zou on 4/27/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

class RulesViewController: UIViewController {

    @IBOutlet weak var rulesText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rulesText.text = "LMCA Blackjack Rules:\n6-Decks Played\nBlackjack pays 3:2\nPays 2 to 1\nInsuranced Allowed\nDouble Down Allowed\nDealer must draw to 16, stand on 17\n\nThe objective of Blackjack is to beat the dealer. If the player has a card total that is greater than the dealer, but less than or equal to 21, they win.\n\nAces are worth 1 or 11\nFace cards are worth 10\nNumbered cards are worth their respective number\n\n"
        // Do any additional setup after loading the view.
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
