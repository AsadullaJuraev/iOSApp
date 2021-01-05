//
//  Item.swift
//  iOSApp
//
//  Created by Asadulla Juraev on 05.01.2021.
//

import Foundation
class Item {
    var title: String? = ""
    var image: String? = ""
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
}
