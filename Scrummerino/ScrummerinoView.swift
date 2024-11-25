//
//  ContentView.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import SwiftUI

struct ScrummerinoView: View {
	
	@StateObject var scrumsListViewModel: ScrumsListViewModel
	
    var body: some View {
		TabView {
			Tab("Scrums", systemImage: "timer") {
				ScrumsListView(model: self.scrumsListViewModel)
			}

			Tab("Github", systemImage: "person.crop.badge.magnifyingglass") {
				Text("Github")
			}
		}
    }
}

#Preview {
	ScrummerinoView(scrumsListViewModel: .init(scrums: .sampleData))
}
