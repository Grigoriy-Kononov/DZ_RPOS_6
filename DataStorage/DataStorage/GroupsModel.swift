//
//  GroupsModel.swift
//  DataStorage
//
//  Created by Григорий Кононов on 31.08.2023.
//

struct GroupsModel: Codable {
    var response: GroupsResponse?
}

struct GroupsResponse: Codable {
    var count: Int
    var items: [Group]?
}

struct Group: Codable {
    var id: Int
    var name: String?
    var description: String?
    var photo: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case photo = "photo_50"
    }
}
