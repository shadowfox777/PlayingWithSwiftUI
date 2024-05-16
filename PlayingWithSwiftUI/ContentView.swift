//
//  ContentView.swift
//  PlayingWithSwiftUI
//
//  Created by MacBook Air on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var present: Bool = false
    @State var presentSetting: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack {
                Text("Hello, world!")
                    .padding()
                
                NavigationLink{
                    NewPage()
                } label: {
                    Text("continue to next page!")
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    present = true
                }, label:{
                    Text("Go TO Black")
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                        .background(.black)
                        .foregroundColor(.white)
                })
                .sheet(isPresented: $present, content: {
                    BlackDestination()
                })
                NavigationLink(isActive:
                    $presentSetting){
                    SettingPage()
                    
                }label: {
                    Text("Go to Setting Menu")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
