//
//  ContentView.swift
//  desafio02
//
//  Created by Turma02-15 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("apple")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding()
                
                VStack (spacing: 10) {
                    Text("HackaTruck")
                        .foregroundStyle(.red)
                    Text("Apple")
                        .foregroundStyle(.blue)
                    Text("Swift")
                        .foregroundStyle(.orange)
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
