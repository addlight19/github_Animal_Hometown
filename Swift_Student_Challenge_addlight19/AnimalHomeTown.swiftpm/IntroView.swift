//
//  IntroView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        
        VStack(alignment: .center) {
            Image("Compass")
            Text("The Hometown Game project needs to find disappearing animal habitats. You need to guess the disappearing wild animals's hometown. Help animals with EN(Endangerd) class specified by IUCN.")
                .multilineTextAlignment(.center)
                .font(.title2)
                .padding()
            Text("Choose the right hometown for the animals!")
                .foregroundColor(.orange)
                .font(.title2)
        }
        .frame(width: 600)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
