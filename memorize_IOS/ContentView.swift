//
//  ContentView.swift
//  memorize_IOS
//
//  Created by Johnson Chen on 3/1/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(alignment: .center, content: {
            RoundedRectangle(cornerRadius: 18.0)
                .stroke(lineWidth: 3)
                .foregroundColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)
            Text("Hello, world!")
                .foregroundColor(Color.orange)
        })
            .padding(20)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
