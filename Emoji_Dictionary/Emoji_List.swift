//
//  ContentView.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/7/22.
//

import SwiftUI

struct Emoji_List: View {
    
    var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "🤔"),
                           Emoji(id: UUID(), symbol: "😈"),
                           Emoji(id: UUID(), symbol: "🥰"),
                           Emoji(id: UUID(), symbol: "😠")
    ]
    
    var body: some View {
        
        NavigationView {
            List(emojis) { listedEmoji in
                NavigationLink(
                    destination: EmojiDetailView(Emoji: listedEmoji) ,
                    label: {
                        Text(listedEmoji.symbol)
                    })
               
            }
            .navigationTitle("Emoji Dictionary: \(emojis.count)")
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
}

struct Emoji_List_Previews: PreviewProvider {
    static var previews: some View {
        Emoji_List()
    }
}
