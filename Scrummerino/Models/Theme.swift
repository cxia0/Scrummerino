//
//  Theme.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
	case bubblegum
	case buttercup
	case indigo
	case lavender
	case magenta
	case navy
	case orange
	case oxblood
	case periwinkle
	case poppy
	case purple
	case seafoam
	case sky
	case tan
	case teal
	case yellow
	
	var accentColor: Color {
		switch self {
		case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
		case .indigo, .magenta, .navy, .oxblood, .purple: return .white
		}
	}
	var mainColor: Color {
		guard self.rawValue != "orange" else { return Color.orange }
		return Color(self.rawValue) // initializes a color from the asset catalog.
	}
	var name: String { rawValue.capitalized }
	var id: String { self.name }
}
