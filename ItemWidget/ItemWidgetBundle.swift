//
//  ItemWidgetBundle.swift
//  ItemWidget
//
//  Created by Terry Jason on 2023/9/1.
//

import WidgetKit
import SwiftUI

@main
struct ItemWidgetBundle: WidgetBundle {
    var body: some Widget {
        ItemWidget()
        ItemWidgetLiveActivity()
    }
}
