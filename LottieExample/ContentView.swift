//
//  ContentView.swift
//  LottieExample
//
//  Created by Fatih Durmaz on 24.11.2023.
//

import SwiftUI
import Lottie

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // JSON Dosyasından Oynatma
                VStack {
                    Text("JSON Dosyasından")
                        .bold()
                    LottieView(animation: .named("world"))
                        .looping()
                    .frame(width: 200, height: 200)
                }
                
                Spacer()
                
                // URL Adresinden Oynatma
                VStack {
                    Text("URL Adresinden")
                        .bold()
                    LottieView {
                        await LottieAnimation.loadedFrom(url: URL(string: "https://lottie.host/8d80d123-e13f-484f-8ce0-0fe220e0888f/v9Ar0kgFP3.json")!)
                    } placeholder: {
                        ProgressView()
                    }
                    .looping()
                .frame(width: 200, height: 200)
                }
                
                
            }
            .padding()
            .navigationTitle("Lottie Example")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.teal)
        }
    }
}

#Preview {
    ContentView()
}
