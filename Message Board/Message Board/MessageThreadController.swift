//
//  MessageThreadController.swift
//  Message Board
//
//  Created by Jordan Davis on 5/22/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class MessageThreadController {
   
    static let baseURL = URL(string: "https://lambda-message-board.firebaseio.com/")!
    
    func createMessageThread(with messageThread: MessageThread, title: String, using method: HTTPMethod, completion: @escaping (Error?) -> Void) {
    
        let messageThread = MessageThread(title: title)
        
        var requestURL = MessageThreadController.baseURL
        
        if method == .put {
            
            requestURL.appendPathComponent(messageThread.identifier)
        }
        
        requestURL.appendPathExtension("json")
        
        var request = URLRequest(url: requestURL)
        
        request.httpMethod = method.rawValue
        
        do {
            let jsonEncoder = JSONEncoder()
            request.httpBody = try jsonEncoder.encode(messageThread)
        } catch {
            NSLog("Error encoding message thread: \(error)")
        }
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                NSLog("Error pushing Message Thread to Firebase: \(error)")
                completion(error)
                return
            }
            completion(nil)
        }.resume()
        
        
    }
    
    func createMessage(with messageThread: MessageThread, newMessage: MessageThread.Message, text: String, sender: String, method: HTTPMethod, completion: @escaping (Error?) -> Void) {
        
        let newMessage = MessageThread.Message(text: text, sender: sender)
        
        var secondRequestURL = MessageThreadController.baseURL
        
        if method == .post {
            
            secondRequestURL.appendingPathComponent(messageThread.identfier)
        }
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    enum HTTPMethod: String {
        case put = "PUT"
        case post = "POST"
    
    }
    
    
    //MARK: - Properties
    
    let messageThreadConroller = MessageThreadController.baseURL
    var messageThreads: [MessageThread] = []
}

