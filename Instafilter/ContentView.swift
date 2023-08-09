//
//  ContentView.swift
//  Instafilter
//
//  Created by Tom on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
	@State private var showingConfirmation = false
	@State private var backgroundColor = Color.white
		
	var body: some View {
	Text("Hello, world!")
			.frame(width: 300, height: 300)
			.background(backgroundColor)
			.onTapGesture {
				showingConfirmation = true
			}
			.confirmationDialog("Change background", isPresented: $showingConfirmation) {
				Button("Red") { backgroundColor = .red }
				Button("Green") { backgroundColor = .green }
				Button("Blue") {backgroundColor = .blue }
				Button("Cancel", role: .cancel) {}
			} message:  {
				Text("Select a new color")
			}
	}
}

#Preview {
    ContentView()
}
