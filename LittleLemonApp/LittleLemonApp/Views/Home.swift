//
//  Home.swift
//  LittleLemonApp
//
//  Created by Danielle Dhainy on 10/17/23.
//

import SwiftUI


struct Home: View {
    
    var body: some View {
        MainScreen()
            .navigationBarBackButtonHidden()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
