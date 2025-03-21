//
//  ContentView.swift
//  desafio03
//
//  Created by Turma02-15 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("forest")
                    .resizable()
                    .frame(width: 1000, height: 1000)
                    .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .opacity(0.8)
                
                Image("forestLogo")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150)
            }
        }
    }
}

#Preview {
    ContentView()
}
