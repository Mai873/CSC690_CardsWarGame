//
//  CardsGameWarView.swift
//  CardsGameWar
//
//  Created by Mai Ra on 12/6/21.
//
import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = -1
    @State private var cpuCard = -1
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
        var body: some View {
            
        ZStack {
            Image("background").resizable().ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                         Spacer()
                         Image(self.playerCard == -1 ? "back" : "card\(self.playerCard)")
                         Spacer()
                         Image(self.cpuCard == -1 ? "back" : "card\(self.cpuCard)")
                         Spacer()
                        }
                    Spacer()
                            
                Button(action: {
                    // Generate a random number between 2 and 14
                    self.playerCard = Int.random(in: 2...14)
                    self.cpuCard = Int.random(in: 2...14)
                                       
                              // Update the cards
                    if self.playerCard > self.cpuCard {
                                                self.playerScore += 1
                                            } else if self.cpuCard > self.playerCard {
                                                self.cpuScore += 1
                                            }
                                       
                },
                        label: {
                           Image("dealbutton").renderingMode(.original)
                        })
                            
                            Spacer()
                HStack {
                     Spacer()
                     VStack {
                        Text("Player")
                           .font(.headline)
                           .foregroundColor(Color.white)
                           .padding(.bottom, 10.0)
                        Text(String(playerScore))
                           .font(.largeTitle)
                           .foregroundColor(Color.white)
                     }
                     Spacer()
                     VStack {
                        Text("CPU")
                           .font(.headline)
                           .foregroundColor(Color.white)
                           .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                           .font(.largeTitle)
                           .foregroundColor(Color.white)
                        }
                     Spacer()
                }
                            Spacer()
                            
                        }
                        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
