//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Onat Duman on 7.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isTurkish: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            if isTurkish{
                Text("Selam, dünya!")
                    .font(.title)
                    .padding(1)
            }else{
                Text("Hello, world!")
                    .font(.title)
                    .padding(1)
            }
                
            Button(action: {
                self.isTurkish.toggle()
            }, label: {isTurkish ? Text("English"): Text("Türkçe")})
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
