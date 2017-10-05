//
//  SearchResponse.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/06.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

struct SearchResponse<Item: JSONDecodable>: JSONDecodable {
  let totalCount: Int
  let items: [Item]
  
  init(json: Any) throws {
    guard let dictionary = json as? [String: Any] else {
      throw JSONDecoderError.invalidFormat(json: json)
    }
    
    guard let totalCount = dictionary["total_count"] as? Int else {
      throw JSONDecoderError.missingValue(key: "total_count", actualValue: dictionary["total_count"])
    }
    
    guard let itemObject = dictionary["items"] as? [Any] else {
      throw JSONDecoderError.missingValue(key: "items", actualValue: dictionary["items"])
    }
    
    let items = try itemObject.map {
      return try Item(json: $0)
    }
    
    self.totalCount = totalCount
    self.items = items
  }
}
