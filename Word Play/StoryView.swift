//
//  StoryView.swift
//  Word Play
//
//  Created by Jonathan Varghese on 10/16/23.
//

import SwiftUI


struct StoryView: View {
    let words: Words
    var body: some View {
        Text(writeStory())
    }
    
    func  writeStory() -> String {
        
        return
            "One \(words.adjective0) , \(words.adjective1) night, no stars in sight. Thunder roared " +
        "a \(words.adjective2) hello; lighting flashed the trees below. The " +
        "sound of a \(words.animal) could be heard in the distance. " +
        "It was Halloween night. I was dressed as a \(words.noun0). My bag " +
        "was beside me filled with \(words.adjective3) \(words.food) that I couldn't wait to eat " +
        "As I \(words.verb) up the driveway of a house to trick or treat,I " +
        "wonder what type of \(words.noun1) I will get. " +
        "I ring the doorbell with \(words.adverb). " +
        "It opens and a \(words.adjective4) man wearing a \(words.noun2) looks at me. " +
        "I scream, Trick or Treat, Smell my \(words.noun3)! "
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
