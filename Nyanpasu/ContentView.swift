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
        Button(action: nyanpasu, label: {
            Text("Nyanpasu!")
        }).onAppear(perform: {
            // Load data from Core Data
        })
        
        Text("You have nyanpasu'd \(self.counter) time\(self.counter == 1 ? "" : "s")")
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
