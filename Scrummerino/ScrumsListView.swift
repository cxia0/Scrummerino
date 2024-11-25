//
//  ScrumsListView.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import SwiftUI

@MainActor
class ScrumsListViewModel: ObservableObject {
	@Published var scrums: [Scrum]
	
	init(scrums: [Scrum]) {
		self.scrums = scrums
	}
}

struct ScrumsListView: View {
	
	@StateObject var model: ScrumsListViewModel
	
    var body: some View {
		List(self.model.scrums) { scrum in
			Text(scrum.title)
		}
    }
}

#Preview {
	ScrumsListView(model: ScrumsListViewModel(scrums: .sampleData))
}
