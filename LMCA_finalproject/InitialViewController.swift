//
//  ViewController.swift
//  LMCA_finalproject
//
//  Created by Lisa Li on 4/24/20.
//  Copyright © 2020 Lisa Li. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func unwindEndGame(segue: UIStoryboardSegue) {
    }


}

