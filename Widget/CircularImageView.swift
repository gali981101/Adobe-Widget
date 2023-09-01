//
//  CircularImageView.swift
//  Widget
//
//  Created by Terry Jason on 2023/8/31.
//

import SwiftUI

struct itemImageView: View {
    
    var image: Image
    
    var body: some View {
        image.resizable().scaledToFit()
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        itemImageView(image: Image("premiere-pro"))
    }
}
