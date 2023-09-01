//
//  Item.swift
//  Widget
//
//  Created by Terry Jason on 2023/8/31.
//

import Foundation

struct Item: Identifiable, Codable {
    
    let image: String
    let name: String
    let FullName: String
    
    var id: String {image}
    
}

let pr = Item(image: "premiere-pro", name: "PR", FullName: "Premiere-Pro")

let ae = Item(image: "after-effects", name: "AE", FullName: "After-Effects")

let ai = Item(image: "illustrator", name: "Ai", FullName: "Illustrator")

let ps = Item(image: "photoshop", name: "PS", FullName: "Photoshop")


