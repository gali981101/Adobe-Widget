//
//  ItemView.swift
//  Widget
//
//  Created by Terry Jason on 2023/8/31.
//

import SwiftUI

struct ItemView: View {
    let item: Item
    
    var body: some View {
        HStack {
            VStack {
                ImageView(image: Image(item.image)).frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                Text(item.FullName).font(.body)
            }
            .padding(.bottom)
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: ai)
    }
}
