//
//  Firebase.swift
//  BoF
//
//  Created by Magrethe second on 10/03/2017.
//  Copyright © 2017 Lasse Bonner. All rights reserved.
//

import UIKit

class User: NSObject {
    var username: String
    
    init(username: String) {
        self.username = username
    }
    
    convenience override init() {
        self.init(username:  "")
    }
}

class Post: NSObject {
    var uid: String
    var author: String
    var title: String
    var body: String
    var starCount: AnyObject?
    var stars: Dictionary<String, Bool>?
    
    init(uid: String, author: String, title: String, body: String) {
        self.uid = uid
        self.author = author
        self.title = title
        self.body = body
        self.starCount = 0 as AnyObject?
    }
    
    convenience override init() {
        self.init(uid: "", author: "", title: "", body:  "")
    }
}
