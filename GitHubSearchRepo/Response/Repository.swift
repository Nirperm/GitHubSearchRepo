//
//  Repository.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/06.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

struct Repository: JSONDecodable{
  let id: Int
  let name: String
  let fullname: String
  let owner: User
  
  init(json: Any) throws {
    guard let dictionary = json as? [String: Any] else {
      throw JSONDecoderError.invalidFormat(json: json)
    }
    
    guard let id = dictionary["id"] as? Int else {
      throw JSONDecoderError.missingValue(key: "id", actualValue: dictionary["id"])
    }
    
    guard let name = dictionary["name"] as? String else {
      throw JSONDecoderError.missingValue(key: "login", actualValue: dictionary["login"])
    }
    
    guard let fullname = dictionary["fullname"] as? String else {
      throw JSONDecoderError.missingValue(key: "fullname", actualValue: dictionary["fullname"])
    }
    
    guard let ownerObject = dictionary["owner"] else {
      throw JSONDecoderError.missingValue(key: "owner", actualValue: dictionary["owner"])
    }
    
    self.id = id
    self.name = name
    self.fullname = fullname
    self.owner = try User(json: ownerObject)
  }
}
