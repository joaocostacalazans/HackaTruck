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
                VStack {
                    ForEach (viewModel.personagens) { personagem in
                        HStack {
                            
                            AsyncImage(url: URL(string: personagem.image ?? "Imagem não encontrada")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                Image(systemName: "photo.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 120)
                            .clipShape(Rectangle())
                            .cornerRadius(5)
                            
                            VStack(alignment: .leading) {
                                Text(personagem.name ?? "Nome não encontrado")
                                    .padding(.leading)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                
                                Text(personagem.actor ?? "Nome não encontrado")
                                    .padding(.leading)
                                    .font(.subheadline)
                            }
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
