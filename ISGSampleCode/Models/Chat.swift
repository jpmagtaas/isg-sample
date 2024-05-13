//
//  Chat.swift
//  ISGSampleCode
//
//  Created by Juan Paolo Magtaas on 5/12/24.
//

import Foundation

struct Chat: Codable {
    let id: Int
    let name: String
    let avatarUrl: String
    let recentMessage: String
    let date: String
}
