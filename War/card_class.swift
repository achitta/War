//
//  card_class.swift
//  War
//
//  Created by Aditya Chitta on 7/16/19.
//  Copyright © 2019 Aditya Chitta. All rights reserved.
//

import Foundation

let RANK_TWO = 2
let RANK_THREE = 3
let RANK_FOUR = 4
let RANK_FIVE = 5
let RANK_SIX = 6
let RANK_SEVEN = 7
let RANK_EIGHT = 8
let RANK_NINE = 9
let RANK_TEN = 10
let RANK_JACK = 11
let RANK_QUEEN = 12
let RANK_KING = 13
let RANK_ACE = 14

let SUIT_SPADES = "S"
let SUIT_HEARTS = "H"
let SUIT_CLUBS = "C"
let SUIT_DIAMONDS = "D"

var RANK_BY_WEIGHT = [RANK_TWO, RANK_THREE, RANK_FOUR, RANK_FIVE, RANK_SIX, RANK_SEVEN, RANK_EIGHT, RANK_NINE, RANK_TEN, RANK_JACK, RANK_QUEEN, RANK_KING, RANK_ACE]

var SUIT_BY_WEIGHT = [SUIT_SPADES, SUIT_HEARTS, SUIT_CLUBS, SUIT_DIAMONDS]

class Card {
    var rank = 2
    var suit = "Spades"
    
    init(_ rank: Int, _ suit: String) {
        self.rank = rank;
        self.suit = suit;
    }
    
    func getRank() -> Int {
        return rank;
    }
    
    func getSuit() -> String {
        return suit;
    }
    
    func printCard() {
        print(String(rank) + " of " + suit)
    }
}

func lessThan(_ Card1: Card, _ Card2: Card) -> Bool {
    return Card1.getRank() < Card2.getRank();
}

func equalTo(_ Card1: Card, _ Card2: Card) -> Bool {
    return Card1.getRank() == Card2.getRank();
}
