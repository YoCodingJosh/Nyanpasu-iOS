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

    var body: some View {
        Button(action: nyanpasu, label: {
            Text("Nyanpasu!")
        })
    }
    
    private func nyanpasu() {
        playSound()
        
        incrementCounter()
    }
    
    private func playSound() {
        playMySound()
    }

    private func incrementCounter() {
        // TODO: Persist count to Core Data
        print("nyanpasu!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
