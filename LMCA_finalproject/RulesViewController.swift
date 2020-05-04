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
        self.rulesText.text = "PLACEHOLDER: \n6-Decks, Stand on 17 and higher, Split Pairs, Insurance, Blackjack 3:2 payout"
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
