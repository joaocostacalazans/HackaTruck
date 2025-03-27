//
//  ContentView.swift
//  temp
//
//  Created by Turma01-10 on 25/03/25.
//

import SwiftUI

struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var cover: String
}

struct ContentView: View {
    
    var songs = [
        Song(id: 1, name: "Name1", artist: "Artist1", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 2, name: "Name2", artist: "Artist2", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 3, name: "Name3", artist: "Artist3", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 4, name: "Name4", artist: "Artist4", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 5, name: "Name5", artist: "Artist5", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 6, name: "Name6", artist: "Artist6", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 7, name: "Name7", artist: "Artist7", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380"),
        Song(id: 8, name: "Name8", artist: "Artist8", cover: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(stops: [
                    Gradient.Stop(color: .blue, location: 0.15),
                    Gradient.Stop(color: .black, location: 0.55),
                ], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                
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
                        Text("Title")
                            .foregroundStyle(.white)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    HStack(alignment: .center) {
                        AsyncImage(url: URL(string: "https://img.freepik.com/fotos-gratis/o-ovo-de-pascoa-surrealista-com-paisagem-de-mundo-de-fantasia_23-2151199967.jpg?t=st=1742843886~exp=1742847486~hmac=8ab0f2c32ceaa9244f80384fa9f8e393f16883f6f57c51fdd8cb6286be17f708&w=1380")) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(5)
                            } placeholder: {
                                Image(systemName: "photo.fill")
                            }
                            .frame(height: 25)
                            .padding(.leading)
                            .padding(.bottom)
                        
                        Text("Title")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .padding(.bottom)
                        Spacer()
                    }
                    Spacer()
                    
                    ScrollView {
                        ForEach(songs) { song in
                            NavigationLink(destination: SongView(song: song)) {
                                HStack {
                                    AsyncImage(url: URL(string: song.cover)) { image in
                                            image
                                                .resizable()
                                                .scaledToFit()
                                                .cornerRadius(5)
                                        } placeholder: {
                                            Image(systemName: "photo.fill")
                                        }
                                        .frame(width: 50)
                                        .padding(.leading)
                                        .padding(.trailing, 5)
                                    
                                    VStack(alignment: .leading) {
                                        Text(song.name)
                                            .foregroundStyle(.white)
                                        Text(song.artist)
                                            .font(.caption)
                                            .foregroundStyle(.white)
                                    }
                                    Spacer()
                                }
                                .padding(2)
                            }
                        }
                        
                        HStack {
                            Text("Sugeridos")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.leading)
                                .padding(.top, 30)
                            Spacer()
                        }
                        
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(songs) { song in
                                    VStack {
                                        AsyncImage(url: URL(string: song.cover)) { image in
                                                image
                                                    .resizable()
                                                    .scaledToFit()
                                                    .cornerRadius(15)
                                            } placeholder: {
                                                Image(systemName: "photo.fill")
                                            }
                                            .frame(width: 160)
                                            .padding()
                                        
                                        Text(song.name)
                                            .foregroundStyle(.white)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .tint(.white)
        //.accentColor(.white)
    }
}

#Preview {
    ContentView()
}
