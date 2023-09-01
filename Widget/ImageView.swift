//
//  CircularImageView.swift
//  Widget
//
//  Created by Terry Jason on 2023/8/31.
//

import SwiftUI

struct ImageView: View {
    
    var image: Image
    
    var body: some View {
        image.resizable().scaledToFit().shadow(radius: 15)
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("premiere-pro"))
    }
}
