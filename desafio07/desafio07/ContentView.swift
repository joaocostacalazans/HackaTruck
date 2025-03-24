//
//  ContentView.swift
//  desafio07
//
//  Created by Turma01-10 on 24/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            struct Song : Identifiable {
                var id: Int
                var name: String
                var artist: String
                var cover: String
            }
            
            var songs = [
                Song(id: 1, name: "Name 1", artist: "Artist 1", cover: "Cover 1"),
                Song(id: 2, name: "Name 2", artist: "Artist 2", cover: "Cover 2"),
                Song(id: 3, name: "Name 3", artist: "Artist 3", cover: "Cover 3"),
                Song(id: 4, name: "Name 4", artist: "Artist 4", cover: "Cover 4"),
                Song(id: 5, name: "Name 5", artist: "Artist 5", cover: "Cover 5")
            ]
            
            ZStack {
                LinearGradient(stops: [
                    .init(color: .blue, location: 0.15),
                    .init(color: .black, location: 0.55),
                ], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    AsyncImage(url: URL(string: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                    } placeholder: {
                        Image(systemName: "photo.fill")
                    }
                    .frame(width: 250)
                    .padding()
                    
                    HStack {
                        Text("Lofi Beats")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .padding()
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    
                    HStack(spacing: -20) {
                        AsyncImage(url: URL(string: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380")) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(3)
                        } placeholder: {
                            Image(systemName: "photo.fill")
                        }
                        .frame(width: 30, height: 30)
                        .padding()
                        
                        Text("Lofi Beats")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                            .padding()
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
