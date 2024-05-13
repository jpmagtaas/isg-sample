//
//  RecentListViewModel.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation

class RecentListViewModel: ObservableObject {
    @Published var chatList: [Chat] = []
    
    func getChatList() {
        // Fetch data from service that will handle decoding and errors.
        chatList = [Chat(id: 1, name: "Jane Doe", avatarUrl: "https://i.pravatar.cc/64?img=10", recentMessage: "Hey there! How's your day going?", date: "12:05pm"),
                    Chat(id: 2, name: "John Doe", avatarUrl: "https://i.pravatar.cc/64?img=3", recentMessage: "Did you hear about that new movie coming out? Looks amazing!", date: "11:35am"),
                    Chat(id: 3, name: "Mark Iceberg", avatarUrl: "https://i.pravatar.cc/64?img=11", recentMessage: "Just finished a great book, any recommendations for what to read next?", date: "11:15am"),
                    Chat(id: 4, name: "Sara Park", avatarUrl: "https://i.pravatar.cc/64?img=16", recentMessage: "What's your favorite type of cuisine? I'm craving something delicious!", date: "10:10am"),
                    Chat(id: 5, name: "Lewis Pearl", avatarUrl: "https://i.pravatar.cc/64?img=12", recentMessage: "Thinking about taking a trip soon. Any suggestions for a fun destination?", date: "10:10am"),
                    Chat(id: 6, name: "Caleb Increase", avatarUrl: "https://i.pravatar.cc/64?img=2", recentMessage: "Can't believe it's already May! Time really flies, doesn't it?", date: "10:10am")
        ]
    }
}
