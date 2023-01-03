//
//  ContentView.swift
//  memorize_IOS
//
//  Created by Johnson Chen on 3/1/2023.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["🚗", "🛺" , "🏍", "🏎", "🚎", "🚙", "🚕", "🚓", "🛻", "🚚", "🚛", "🚜", "🛴", "🚲", "🛵", "✈️", "🛸", "🚁", "🛳", "🛩"]
    
    @State var emojiCount = 3
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(emojis[0..<emojiCount], id:\.self, content: {
                        emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    })
                }
            }
            .foregroundColor(.pink)
            
            Spacer()
            
            HStack{
                remove
                Spacer()
                add
            }.padding(.horizontal).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
        }
        .padding(.horizontal)
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            VStack{
                Image(systemName: "plus.circle")
            }
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 0 {
                emojiCount -= 1
            }
        } label: {
            VStack{
                Image(systemName: "minus.circle")
            }
        }
    }
    
    
}

struct CardView: View {
    
    var content: String = ""
    @State var isUp: Bool = true
    var body: some View {
        ZStack{
            if isUp {
                RoundedRectangle(cornerRadius: 18.0)
                    .fill().foregroundColor(.white)
                RoundedRectangle(cornerRadius: 18.0)
                    .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 18.0)
                    .fill().foregroundColor(.pink)
            }
        }
        .onTapGesture {
                isUp = !isUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewInterfaceOrientation(.portrait)
    }
}
