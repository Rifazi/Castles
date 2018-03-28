//
//  ViewController.swift
//  Castles
//
//  Created by Rifaz Iqbal on 3/28/18.
//  Copyright © 2018 Rifaz Iqbal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let land = Land()
        
        //Set array of heights here
        land.heights = [6,1,4]
        
        print(land.totalCastles())
    }
}

