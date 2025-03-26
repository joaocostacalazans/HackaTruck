//
//  ContentView.swift
//  desafio09
//
//  Created by Turma01-10 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                VStack(spacing: -20) {
                    ForEach (viewModel.personagens) { personagem in
                        HStack {
                            
                            AsyncImage(url: URL(string: personagem.image ?? "Imagem não encontrada")) {
                                result in result.image?
                                    .resizable()
                                    .scaledToFit()
                            }
                            .frame(width: 120)
                            .clipShape(Circle())
                            
                            Text(personagem.name ?? "Nome não encontrado")
                                .padding(.leading)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        .padding(.leading)
                    }
                }
            }
        }
        
        .onAppear {
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
