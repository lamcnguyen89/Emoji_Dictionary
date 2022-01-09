//
//  Emoji_Grid.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/9/22.
//

import SwiftUI

struct EmojiGridView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(emojis) {listedEmoji in
                        
                        NavigationLink(
                            destination: EmojiDetailView(Emoji: listedEmoji) ,
                            label: {
                                Text(listedEmoji.symbol)
                                    .font(.system(size: 100))
                            })
                        
  
                    }
                }
                
            }
            .navigationTitle("Emoji Dictionary: \(emojis.count)")
        }
        


    }
}

struct EmojiGridView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGridView()
    }
}
