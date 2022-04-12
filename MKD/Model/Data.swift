//
//  Data.swift
//
//  Created by Rafia Zaheer on 13/04/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

class Data: Codable {

  enum CodingKeys: String, CodingKey {
    case access_token //= "access_token"
    case email
    case lastName = "last_name"
    case userId = "user_id"
    case image
    case firstName = "first_name"
    case refreshToken = "refresh_token"
  }

  var access_token: String?
  var email: String?
  var lastName: String?
  var userId: Int?
  var image: String?
  var firstName: String?
  var refreshToken: String?



    required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
      access_token = try container.decodeIfPresent(String.self, forKey: .access_token)
    email = try container.decodeIfPresent(String.self, forKey: .email)
    lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
    userId = try container.decodeIfPresent(Int.self, forKey: .userId)
    image = try container.decodeIfPresent(String.self, forKey: .image)
    firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
    refreshToken = try container.decodeIfPresent(String.self, forKey: .refreshToken)
  }

}
