//
//  ContentView.swift
//  desafio10
//
//  Created by Turma01-10 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 18) {
                    ForEach(viewModel.castelos, id: \._id) { castelo in
                        HStack {
                            AsyncImage(url: URL(string: castelo.imagemURL)) { image in
                                image.resizable().scaledToFit()
                            } placeholder: {
                                Image(systemName: "photo.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 120)

                            VStack(alignment: .leading) {
                                Text(castelo.nome)
                                    .font(.headline)
                                Text(castelo.pais)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text("Ano: \(castelo.anoConstrucao)")
                                    .font(.caption)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle("Castelos")
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
