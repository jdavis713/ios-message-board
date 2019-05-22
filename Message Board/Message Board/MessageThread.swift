//
//  MessageThread.swift
//  Message Board
//
//  Created by Jordan Davis on 5/22/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class MessageThread: Codable, Equatable {
    
    let title: String
    let identifier: String
    
    init(title: String, identifier: String = UUID().uuidString) {
        self.title = title
        self.identifier = identifier
    }
    
    static func == (lhs: MessageThread, rhs: MessageThread) -> Bool {
        return lhs.title == rhs.title &&
            rhs.identifier == lhs.identifier
    }
    
    struct Message: Codable, Equatable {
        
        let text: String
        let sender: String
        let timestamp: Date
        
        init(text: String, sender: String, timestamp: Date = Date()) {
            self.text = text
            self.sender = sender
            self.timestamp = timestamp
        }
        
        static func == (lhs: Message, rhs: Message) -> Bool {
            return lhs.text == rhs.text &&
                lhs.sender == rhs.sender &&
                lhs.timestamp == rhs.timestamp
        }
    }
    
    //MARK: - Properties
    
    var messages: [MessageThread.Message] = []
}
