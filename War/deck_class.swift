//
//  deck_class.swift
//  War
//
//  Created by Aditya Chitta on 7/16/19.
//  Copyright © 2019 Aditya Chitta. All rights reserved.
//

import Foundation

class Deck {
    let PACK_SIZE = 52
    var cards : [Card] = []
    var next = 0;
    
    init() {
        for suit in SUIT_BY_WEIGHT {
            for rank in RANK_BY_WEIGHT {
                let c1 = Card(rank,suit)
                self.cards.append(c1)
            }
        }
    }
    
    func dealOne() -> Card{
        next += 1
        return cards[next-1]
    }
    
    func my_shuffle() {
        let random_num = Int.random(in: 4...51)
        for _ in 0...random_num {
            var top_half : [Card] = []
            var bottom_half : [Card] = []
            for i in 0...25 {
                top_half.append(cards[i])
            }
            
            for j in 26...51 {
                bottom_half.append(cards[j])
            }
            
            for k in 0...51 {
                if(k%2 == 0) {
                    cards[k] = bottom_half[k/2]
                }
                else {
                    cards[k] = top_half[k/2]
                }
            }
        }
        cards.shuffle()
    }
    
    func empty() -> Bool {
        return next > PACK_SIZE - 1
    }
    
    func reset() {
        next = 0;
        var count = 0;
        for suit in SUIT_BY_WEIGHT {
            for rank in RANK_BY_WEIGHT {
                let c1 = Card(rank,suit)
                cards[count] = c1
                count += 1
            }
        }
    }
    
}
