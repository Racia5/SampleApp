//
//  WeightRecord.swift
//  MyDietDiaryApp
//
//  Created by 増田剛大 on 2023/05/27.
//

import Foundation
import RealmSwift

class WeightRecord: Object {
    override static func primaryKey() -> String? {
        return "id"
    }
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var date: Date = Date()
    @objc dynamic var weight: Double = 0
}
