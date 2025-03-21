//
//  ListaView.swift
//  desafio05
//
//  Created by Turma01-10 on 21/03/25.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    HStack {
                        Text("Item")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                }
            }
        .navigationTitle("List")
        }
    }
}

struct ListaView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
