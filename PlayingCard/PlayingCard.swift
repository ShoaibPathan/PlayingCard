//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Mittie Adan on 10/03/2020.
//  Copyright © 2020 Mittie Adan. All rights reserved.
//❤️♠️♣️♦️

import Foundation

struct PlayingCard: CustomStringConvertible {
 
    var suit: Suit
    var rank: Rank
    var description: String { return "\(rank)\(suit)" }
    
    enum Suit: String, CustomStringConvertible {
        case spades = "♠️"      //пики
        case hearts = "❤️"      //черви
        case clubs = "♣️"       //бубны
        case diamonds = "♦️"    //крести
        
        static var all = [Suit.spades, .hearts, .clubs, .diamonds]
        var description: String
    }
    
    enum Rank: CustomStringConvertible {
        case ace
        case face(String)
        case numeric(Int)
        
        var description: String
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
    }
}
