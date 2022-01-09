//
//  Emoji_DictionaryApp.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/7/22.
//

import SwiftUI

@main
struct Emoji_DictionaryApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                EmojiListView()
                    .tabItem{
                        Label("List", systemImage: "list.dash")
                    }
                EmojiGridView()
                    .tabItem{
                        Label("Grid", systemImage: "rectangle.grid.2x2.fill")
                    }
            }
            
        }
    }
}
