//
//  ItemWidget.swift
//  ItemWidget
//
//  Created by Terry Jason on 2023/9/1.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    @AppStorage("item", store: UserDefaults(suiteName: "group.com.gali.Widget"))
    
    var itemData: Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), item: Item(image: "illustrator", name: "Ai", FullName: "Illustrator"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        
        if let item = try? JSONDecoder().decode(Item.self, from: itemData)  {
            let entry = SimpleEntry(date: Date(), configuration: configuration, item: item)
            completion(entry)
        }
        
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {

        if let item = try? JSONDecoder().decode(Item.self, from: itemData)  {
            let entry = SimpleEntry(date: Date(), configuration: configuration, item: item)
            let timeLine = Timeline(entries: [entry], policy: .never)
            completion(timeLine)
        }
        
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let item: Item
}

struct ItemWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ImageView(image: Image(entry.item.image))
    }
}

struct ItemWidget: Widget {
    let kind: String = "ItemWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            ItemWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Adobe Widget")
        .description("This is an Adobe widget.")
    }
}

