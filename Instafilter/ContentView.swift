//
//  ContentView.swift
//  Instafilter
//
//  Created by Tom on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
	@State private var blurAmount = 0.0
	
	
	
	var body: some View {
        VStack {
			Text("🐻")
				.font (Font.system(size: 120))
				.blur(radius: blurAmount)
				
			
			Slider(value: $blurAmount, in: 0...20)
				.onChange(of: blurAmount) { newValue in
					print("New value is \(newValue)")
				}
			Button("Apply Monday feeling") {
				blurAmount = Double.random(in: 0...20)
			}
        }
		
		
		
        .padding()
    }
}

#Preview {
    ContentView()
}
