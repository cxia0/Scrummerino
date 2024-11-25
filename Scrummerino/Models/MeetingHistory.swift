//
//  MeetingHistory.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import Foundation

struct MeetingHistory {
	let date: Date
	let duration: Int
}

extension MeetingHistory {
	static var mock: MeetingHistory {
		MeetingHistory(date: Date(timeIntervalSince1970: 1671747742), duration: 2)
	}
}
