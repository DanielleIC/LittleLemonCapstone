//
//  Header.swift
//  LittleLemonApp
//
//  Created by Danielle Dhainy on 10/17/23.
//

import SwiftUI


struct Header: View {
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("little-lemon-logo")
                    HStack {
                        Spacer()
                        if isLoggedIn {
                            NavigationLink(destination: UserProfile()) {
                                Image("profile")
                                    .resizable()
                                    .aspectRatio( contentMode: .fit)
                                    .frame(maxHeight: 50)
                                    .clipShape(Circle())
                                    .padding(.trailing)
                            }
                        }
                    }
                }
            }
        }
        .frame(maxHeight: 50)
        
        .onAppear() {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = true
            } else {
                isLoggedIn = false
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
