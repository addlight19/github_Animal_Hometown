//
//  GeneralGoodEndView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct GeneralGoodEndView: View {
    
    @Binding var isLinkActive: Bool
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            VStack {
                Text("Congratulations!")
                    .padding()
                Image("EndingImage")
                    .resizable()
                    .frame(width: 800, height: 200)
                    .padding()
                Text("You sent all the animals home safely!")
            }
            .font(.largeTitle)
            NavigationLink(
                destination: ContentView(),
                label: {
                    PrimaryButton(text: "Return to Home")
                        .frame(width: 200)
                })
            .navigationBarBackButtonHidden(true)

        }
        
        
    }
}

struct GeneralGoodEndView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGoodEndView(isLinkActive: .constant(false))
    }
}
