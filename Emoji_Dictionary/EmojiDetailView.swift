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
            Text("This is the detail view")
                .padding()
            
            Text(Emoji.symbol)
                .font(.system(size: 300
                ))
        }
        
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(Emoji: Emoji(id: UUID(), symbol: "💒"))
    }
}
