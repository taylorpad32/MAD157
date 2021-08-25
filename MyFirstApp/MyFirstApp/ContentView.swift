//
//  ContentView.swift
//  MyFirstApp
//
//  Created by paul taylor on 8/25/21.
//

import SwiftUI

struct ContentView: View {
    @State var helloWorld = 0
    @State private var name = ""
   
    
    var body: some View {
       Button("Hello everyone: \(helloWorld)") {
            self.helloWorld += 1
       }
        NavigationView {
        Form {
            Section {
                TextField("Enter your name", text: $name)
            Text("Hello Blackhawks fans, my name is \(name)")

        }
            Section {
                Text("Hello world again 1")
                Text("Hello world again 2")
            //    Text("Hello world again 3")
            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
