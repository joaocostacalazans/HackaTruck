//
//  ContentView.swift
//  desafio06
//
//  Created by Turma01-10 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.brown
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                    Spacer()
                    Button ("**Modo 1**") {
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    .font(Font.system(size: 20))
                    .font(.headline)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
