//
//  ContentView.swift
//  desafio01
//
//  Created by Turma02-15 on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.red)
                Spacer()
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
            }
            
            Spacer()
            
            HStack {
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
