//
//  ContentView.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            HomeView()
            Spacer()
        }
        .background(Color("PurpleColor"))
    }
}

#Preview {
    ContentView()
}


