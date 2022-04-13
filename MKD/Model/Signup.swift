//
//  Signup.swift
//
//  Created by Rafia Zaheer on 13/04/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Signup: Codable {

  enum CodingKeys: String, CodingKey {
    case data
    case success
    case error
  }

  var data: UserData?
  var success: Bool?
  var error: Dictionary<String, String>?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    data = try container.decodeIfPresent(UserData.self, forKey: .data)
    success = try container.decodeIfPresent(Bool.self, forKey: .success)
    error = try container.decodeIfPresent(Dictionary<String, String>.self, forKey: .error)
  }

}
