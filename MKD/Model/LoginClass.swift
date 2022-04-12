//
//  LoginClass.swift
//
//  Created by Rafia Zaheer on 13/04/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

class LoginClass: Codable {

  enum CodingKeys: String, CodingKey {
    case data
    case success
  }

  var data: Data?
  var success: Bool?
    
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    data = try container.decodeIfPresent(Data.self, forKey: .data)
    success = try container.decodeIfPresent(Bool.self, forKey: .success)
  }

}
