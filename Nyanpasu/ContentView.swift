//
//  ContentView.swift
//  Nyanpasu
//
//  Created by Josh Kennedy on 1/15/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var counter: Int = 0

    var body: some View {
        VStack {
            Image("Renge")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Button(action: nyanpasu, label: {
                    Text("Nyanpasu!")
                }).onAppear(perform: {
                    // Load data from Core Data
                }).padding(7).overlay(RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 2))
                
                Text("You have nyanpasu'd \(self.counter) time\(self.counter == 1 ? "" : "s")")
            }.frame(height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Text("にゃんぱす！").frame(alignment: .bottom)
        }
    }
    
    private func nyanpasu() {
        playMySound()
        
        incrementCounter()
    }

    private func incrementCounter() {
        // TODO: Persist count to Core Data
        print("nyanpasu!")
        
        self.counter += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
