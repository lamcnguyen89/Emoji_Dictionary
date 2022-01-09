//
//  Emoji.swift
//  Emoji_Dictionary
//
//  Created by Lam Nguyen on 1/9/22.
//

import Foundation


    
    var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "🤔", definition: "Pondering", rating: 4),
                           Emoji(id: UUID(), symbol: "😈", definition: "Rebellious", rating: 5),
                           Emoji(id: UUID(), symbol: "🥰", definition: "Love Blind", rating: 1),
                           Emoji(id: UUID(), symbol: "😠", definition: "Angry Focused", rating: 3),
                           Emoji(id: UUID(), symbol: "🐇", definition: "Rabbit Fucking", rating: 4),
                           Emoji(id: UUID(), symbol: "👻", definition: "Silly Scare", rating: 5),
                           Emoji(id: UUID(), symbol: "👰🏻", definition: "Love of my Life", rating: 1),
                           Emoji(id: UUID(), symbol: "🧚‍♀️", definition: "Whimsical Magic", rating: 3),
                           Emoji(id: UUID(), symbol: "🍩", definition: "King Donut", rating: 4),
                           Emoji(id: UUID(), symbol: "🧛🏻‍♂️", definition: "Count Fang", rating: 5),
                           Emoji(id: UUID(), symbol: "🧝🏻‍♀️", definition: "Druidic Rights", rating: 1),
                           Emoji(id: UUID(), symbol: "👽", definition: "Far Out", rating: 3),
                           Emoji(id: UUID(), symbol: "🎃", definition: "Hallows Eve", rating: 4),
                           Emoji(id: UUID(), symbol: "☽", definition: "Midnight", rating: 5),
                           Emoji(id: UUID(), symbol: "❤️‍🩹", definition: "Mended Heart", rating: 1),
                           Emoji(id: UUID(), symbol: "🦄", definition: "Narnia", rating: 3),
    ]
    

    struct Emoji: Identifiable {
        var id: UUID
        var symbol: String
        var definition: String
        var rating: Int
    }
