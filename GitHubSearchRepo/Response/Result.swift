//
//  Result.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/10.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

enum Result<T, Error: Swift.Error> {
  case success(T)
  case failure(Error)
  
  init(value: T) {
    self = .success(value)
  }
  
  init(error: Error) {
    self = .failure(error)
  }
}
