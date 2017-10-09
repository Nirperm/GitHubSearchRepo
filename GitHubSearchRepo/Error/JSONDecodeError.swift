//
//  JSONDecodeError.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/06.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

enum JSONDecodeError: Error {
  case invalidFormat(json: Any)
  case missingValue(key: String, actualValue: Any?)
}
