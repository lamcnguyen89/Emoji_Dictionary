//
//  ContentView.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/7/22.
//

import SwiftUI

struct EmojiListView: View {
    
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


struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
