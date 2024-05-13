//
//  HomeView.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HomeHeaderView(friendList: $viewModel.friendsList)
            Spacer()
                .frame(height: 30)
            
            RecentListView()
        }
        .padding(.vertical)
        .onAppear {
            viewModel.getFriendsList()
        }
    }
}
