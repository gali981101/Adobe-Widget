//
//  ContentView.swift
//  Widget
//
//  Created by Terry Jason on 2023/8/31.
//

import SwiftUI
import WidgetKit

let itemArray = [pr, ae, ai, ps]

struct ContentView: View {
    @AppStorage("item", store: UserDefaults(suiteName: "group.com.gali.Widget"))
    
    var itemData: Data = Data()
    
    var body: some View {
        VStack {
            ForEach(itemArray) { item in
                ItemView(item: item).onTapGesture {
                    saveToDefaults(item: item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}


// MARK: Func

extension ContentView {
    
    func saveToDefaults(item: Item) {
        if let itemData = try? JSONEncoder().encode(item) {
            self.itemData = itemData
            print(item.FullName)
            WidgetCenter.shared.reloadTimelines(ofKind: "ItemWidget")
        }
    }
    
}
