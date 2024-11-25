//
//  ScrummerinoApp.swift
//  Scrummerino
//
//  Created by Chunfeng Xia on 25/11/2024.
//

import SwiftUI

@main
struct ScrummerinoApp: App {
	
	@StateObject var scrumsListViewModel = ScrumsListViewModel(scrums: [])
	
    var body: some Scene {
        WindowGroup {
			ScrummerinoView(scrumsListViewModel: self.scrumsListViewModel)
        }
    }
}
