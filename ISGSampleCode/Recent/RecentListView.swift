//
//  RecentListView.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation
import SwiftUI

struct RecentListView: View {
    @StateObject var viewModel: RecentListViewModel = RecentListViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ForEach(viewModel.chatList, id: \.id) { chat in
                ChatListView(chat: chat)
                    .frame(height: AppStyle.IconSize.large)
                    .padding(.vertical)
            }
            
            
        }
        .padding()
        .background(.white)
        .roundedCorner(20, corners: [.topLeft, .topRight])
        .onAppear {
            viewModel.getChatList()
        }
    }
}

// This will enable us to render UIKit to SwiftUI
struct ChatListView: UIViewRepresentable {
    var chat: Chat
    
    func makeUIView(context: Context) -> ChatView {
        return ChatView(chat: chat)
    }
    
    func updateUIView(_ uiView: ChatView, context: Context) {
        // Update the view if need
    }
    
    typealias UIViewType = ChatView
    
    
}
