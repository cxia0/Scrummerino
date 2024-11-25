//
//  User.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import Foundation

struct User {
	let name: String
}

extension User {
	static var mock: User { User(name: "Joe") }
}
