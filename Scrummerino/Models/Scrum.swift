//
//  Scrum.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import Foundation

struct Scrum: Identifiable {
	let id: UUID
	let title: String
	let duration: Int
	let attendees: [User]
	let theme: Theme
	let history: MeetingHistory
	
	init(id: UUID = UUID(), title: String, duration: Int, attendees: [User], theme: Theme, history: MeetingHistory) {
		self.id = id
		self.title = title
		self.duration = duration
		self.attendees = attendees
		self.theme = theme
		self.history = history
	}
}

extension Array where Element == Scrum {

	static var sampleData: [Scrum] {
		[
			Scrum(title: "J's Jathering", duration: 5, attendees: [User(name: "Joe"), User(name: "Jil")], theme: .bubblegum, history: .mock),
			Scrum(title: "D One and Only Scrum",duration: 10, attendees: [User(name: "Darren"), User(name: "Dante"), User(name: "Dave")], theme: .buttercup, history: .mock),
			Scrum(title: "C For Yourself", duration: 15, attendees: [User(name: "Christopher"), User(name: "Charles")], theme: .periwinkle, history: .mock),
		]
	}
}
