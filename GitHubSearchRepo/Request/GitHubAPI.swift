//
//  GitHubAPI.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/10.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

final class GitHubAPI {
  struct SearchRepositories: GitHubRequest {
    let keyword: String
    
    typealias Response = SearchResponse<Repository>
    
    var method: HTTPMethod {
      return .get
    }
    
    var path: String {
      return "/search/repositories"
    }
    
    var parameters: Any? {
      return ["q": keyword]
    }
  }
  
  struct SearchUsers: GitHubRequest {
    let keyword : String
    
    typealias Response = SearchResponse<User>
    
    var method: HTTPMethod {
      return .get
    }
    
    var path: String {
      return "/search/users"
    }
    
    var parameters: Any? {
      return ["q": keyword]
    }
  }
}
