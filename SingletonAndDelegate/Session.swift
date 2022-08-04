//
//  Session.swift
//  SingletonAndDelegate
//
//  Created by Сайфуллин Ринат on 01.08.2022.
//

import Foundation

class Session {
    
    
    
    
     init() {
         
         getUID()
         getToken()
         
     }
   
    static let shared = Session()
    
    
    
    var session  = ""
    var token: String = ""
    var userId : Int = 0
    
    
    
    func connectDB() {
        // some
        
        self.session = "new key"
        
    }
    func getUID() {
        self.userId = 12345678
    }
    func getToken () {
        self.token = "dfsdggdfghdfghfd"
    }
    
    
    
}
