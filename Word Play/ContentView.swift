//
//  ContentView.swift
//  Word Play
//
//  Created by Jonathan Varghese on 10/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack{
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                }
                HStack{
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective4)
                    CustomTextField(placeholder: "animal", variable: $words.animal)
                }
                HStack{
                    CustomTextField(placeholder: "food", variable: $words.food)
                    CustomTextField(placeholder: "verb", variable: $words.verb)
                    CustomTextField(placeholder: "adverb", variable: $words.adverb)
                    
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
                
            }
        }
        .navigationTitle("Word Play")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocorrectionDisabled()
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    var adjective4 = ""
    
    var animal = ""
    var food = ""
    var verb = ""
    var adverb = ""
}

/*Just added stuff
  Just added stuff
  Just added stuff
*/
