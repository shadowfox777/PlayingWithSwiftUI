//
//  NewPage.swift
//  PlayingWithSwiftUI
//
//  Created by MacBook Air on 07/05/24.
//

import SwiftUI

struct NewPage: View {
    var body: some View {
        Text("New Page using another file")
            .padding()
        NavigationLink{
            SettingPage()
            
        } label:{
            Text("Go to setting page")
                .padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    NewPage()
}
