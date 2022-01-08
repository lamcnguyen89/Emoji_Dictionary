//
//  EmojiDetailView.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/8/22.
//

import SwiftUI

struct EmojiDetailView: View {
    
    var Emoji : Emoji
    
    var body: some View {
        VStack {
            Text(Emoji.definition)
                .padding()
                .font(.system(size: 30))
            
            Text(Emoji.symbol)
                .font(.system(size: 300
                ))
            Text(" \(String(repeating: "⭐️", count: Emoji.rating))")
                .font(.system(size: 50))
        }
        
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(Emoji: Emoji(id: UUID(), symbol: "💒", definition: "The Church of Darkness", rating: 5))
    }
}
