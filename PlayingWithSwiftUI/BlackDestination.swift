//
//  BlackDestination.swift
//  PlayingWithSwiftUI
//
//  Created by MacBook Air on 07/05/24.
//

import SwiftUI

struct BlackDestination: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView{
            
            VStack{
                Spacer()
                Text("It is dark here")
                    .foregroundColor(.white)
                Spacer()
                
                    
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(.green)
            .navigationTitle("Black Destination")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem{
                    Button(role: .destructive){
                        dismiss()
                    } label: {
                        Text("Done")
                    }
                }
            }
        }
        .interactiveDismissDisabled(true)
    }
}

#Preview {
    BlackDestination()
}
