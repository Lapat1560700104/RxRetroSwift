//
//  Comment.swift
//  RxRetroSwift_Example
//
//  Created by Michael Henry Pantaleon on 2018/01/05.
//  Copyright © 2018 iamkel.net. All rights reserved.
//

import Foundation
import ObjectMapper


struct Comment {
  
  var postId:Int = 0
  var id:Int = 0
  var email:String = ""
  var body:String = ""
}

extension Comment:Mappable {
  
  init?(map: Map) {
    
  }
  
  mutating func mapping(map: Map) {
    postId  <- map["postId"]
    id      <- map["id"]
    email   <- map["email"]
    body    <- map["postbodyId"]
  }
}

