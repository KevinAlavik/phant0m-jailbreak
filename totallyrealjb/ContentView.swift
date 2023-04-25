//
//  ContentView.swift
//  totallyrealjb
//
//  Created by Kevin Alavik on 2023-04-21.
//

import SwiftUI

struct ContentView: View {
    @State var messages = ["[*] Hello there!", "[!] This is a fake jailbreak!"]
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.cyan, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    Text("Phant0m Jailbreak")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 2.5)
                    Text("Totally real jailbreak")
                        .font(.headline)
                        .bold()
                    Text("iOS 11 - 16.4.1 Jailbreak (totally real)")
                        .font(.subheadline)
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 300, height: 200)
                        .cornerRadius(10)
                        .opacity(0.69)
                        .overlay(
                            VStack(alignment: .leading){
                                ForEach(messages, id: \.self) { msg in
                                    Text(msg).foregroundColor(.white).font(.footnote)
                                }
                            }.padding(), alignment: .bottomLeading
                        ).clipped()
                    VStack(spacing: 8) {
                        Button("Jailbreak") {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                messages.append("[*] Check jailbreak status")
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                messages.append("[!] Not jailbroken, will be continuing")
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
                                messages.append("[!] Exited with error")
                            }

                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.cyan)
                        Button("Follow me on twitter!") {
                            if let url = URL(string: "https://www.twitter.com/pufferisadev") {
                                UIApplication.shared.open(url)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.green)
                    }.frame(width: 300)
                }
                VStack {
                    Spacer()
                    Text("work in progress\ndeveloped by @pufferisadev")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .opacity(0.5)
                }.frame(maxHeight: 500)

            }
        }
    }
}
