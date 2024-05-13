//
//  HomeHeaderView.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation
import SwiftUI

struct HomeHeaderView: View {
    @Binding var friendList: [Friend]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Chat with\nyour friends")
                .font(.title3)
                .fontWeight(.heavy)
                .foregroundStyle(.white, .black)
                .padding(.horizontal)
            // horizontal scroll
            ScrollView(.horizontal) {
                HStack {
                    Button {
                        // TODO: Show Search View here
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .frame(width: AppStyle.IconSize.small, height: AppStyle.IconSize.small) // Adjust size as needed
                            .foregroundColor(.white)
                            .padding(10)
                            .background(.white.opacity(0.5))
                            .clipShape(Circle())
                    }
                    
                    ForEach(friendList, id: \.id) { friend in
                        AvatarCircleView(urlString: friend.avatarUrl)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct AvatarCircleView: View {
    var urlString: String
    var size: CGFloat = AppStyle.IconSize.medium
    
    var body: some View {
        Button {
            
        } label: {
            AsyncImage(url: URL(string: urlString)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(width: size, height: size)
            .clipShape(Circle())
        }
    }
}
