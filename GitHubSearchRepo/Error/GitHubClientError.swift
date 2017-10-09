//
//  GitHubClientError.swift
//  GitHubSearchRepo
//
//  Created by kurt on 2017/10/08.
//  Copyright © 2017年 lifehack. All rights reserved.
//

import Foundation

enum GitHubClientError: Error {
  case connectionError(Error)
  case responseParseError(Error)
  case apiError(GitHubAPIError)
}
