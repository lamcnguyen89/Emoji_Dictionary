//
//  ContentView.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/7/22.
//

import SwiftUI

struct Emoji_List: View {
    
    var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "🤔", definition: "Pondering", rating: 4),
                           Emoji(id: UUID(), symbol: "😈", definition: "Rebellious", rating: 5),
                           Emoji(id: UUID(), symbol: "🥰", definition: "Love Blind", rating: 1),
                           Emoji(id: UUID(), symbol: "😠", definition: "Angry Focused", rating: 3)
    ]
    
    var body: some View {
        
        NavigationView {
            List(emojis) { listedEmoji in
                NavigationLink(
                    destination: EmojiDetailView(Emoji: listedEmoji) ,
                    label: {
                        Text("\(listedEmoji.symbol) : \(listedEmoji.definition)")
                    })
               
            }
            .navigationTitle("Emoji Dictionary: \(emojis.count)")
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

struct Emoji_List_Previews: PreviewProvider {
    static var previews: some View {
        Emoji_List()
    }
}
