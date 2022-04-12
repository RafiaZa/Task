//
//  VerifyAccount.swift
//
//  Created by Rafia Zaheer on 13/04/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct VerifyAccount: Codable {

  enum CodingKeys: String, CodingKey {
    case success
    case message
  }

  var success: Bool?
  var message: String?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    success = try container.decodeIfPresent(Bool.self, forKey: .success)
    message = try container.decodeIfPresent(String.self, forKey: .message)
  }

}
