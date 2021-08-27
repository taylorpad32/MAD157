//
//  ContentView.swift
//  ILostMyPhone
//
//  Created by paul taylor on 8/26/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
            NavigationView {
            VStack(spacing: 30) {
                NavigationLink(destination: Text("Paul Taylor\n\n100 Main Street\nAny Town\n\n(222)-555-1212")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.blue)
                    .font(.system(size: 15, weight: .heavy))
                               , isActive:
                    $showDetails) {EmptyView() }
            
                   
                    
                Button("TAP HERE for contact information") {
                    //enter more code here
                    self.showDetails = true
               
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        self.showDetails = false
                    }
                }
                .padding()
                .background(Color.yellow)
                .foregroundColor(.red)
                .clipShape(Capsule())
            }
            .navigationBarTitle("Navigation")
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
