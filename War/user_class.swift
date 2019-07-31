//
//  user_class.swift
//  War
//
//  Created by Aditya Chitta on 7/16/19.
//  Copyright © 2019 Aditya Chitta. All rights reserved.
//

import Foundation

class User {
    var hand : [Card] = []
    
    func add_card(_ newCard: Card) {
        hand.append(newCard);
    }
    
    func remove_card() {
        hand.remove(at: 0)
    }
    
    func play_card() -> Card{
        let temp = hand[0]
        remove_card()
        return temp
    }
    
    func empty_hand() -> Bool {
        if(hand.count == 0) {
            return true;
        }
        return false;
    }
    
    func hand_size() -> Int {
        return hand.count;
    }
}
