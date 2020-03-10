//
//  ViewController.swift
//  PlayingCard
//
//  Created by Mittie Adan on 10/03/2020.
//  Copyright © 2020 Mittie Adan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }



}

