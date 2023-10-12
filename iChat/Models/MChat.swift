//
//  MChat.swift
//  iChat
//
//  Created by Baxodir Yuldashev  on 11/10/23.
//

import UIKit

struct MChat: Hashable, Decodable {

    var username: String
    var userImageString: String
    var lastMessage: String
    var id: Int

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: MChat, rhs: MChat) -> Bool{
        return lhs.id == rhs.id
    }
}
