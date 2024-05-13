//
//  HomeViewModel.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var friendsList: [Friend] = []
    
    func getFriendsList() {
        // Fetch data from service.
        friendsList = [
            Friend(id: 1, name: "Jane", avatarUrl: "https://i.pravatar.cc/64?img=10"),
            Friend(id: 2, name: "John", avatarUrl: "https://i.pravatar.cc/64?img=3"),
            Friend(id: 3, name: "Mark", avatarUrl: "https://i.pravatar.cc/64?img=11"),
            Friend(id: 4, name: "Sara", avatarUrl: "https://i.pravatar.cc/64?img=16"),
            Friend(id: 5, name: "Lewis", avatarUrl: "https://i.pravatar.cc/64?img=12"),
            Friend(id: 6, name: "Caleb", avatarUrl: "https://i.pravatar.cc/64?img=2")
        ]
    }
}
