//
//  FerretView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct FerretView: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        
        VStack {
            Image("Ferret")
                .frame(width: 200, height: 200)
                .padding()
            Text("O-oh my name is black-footed ferret. In fact, our pal was declared extinct in the wild Canada in 1987. I miss my hometown now :(")
                .font(.title3)
                .multilineTextAlignment(.center)
                .frame(width: 400)
                .padding()
            
            NavigationLink(
                destination: GeneralGoodEndView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "I think you should go North America")
                        .frame(width: 200)
                })
            .padding()
            NavigationLink(
                destination: GeneralBadEndView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "I think you should go South America")
                        .frame(width: 200)
                })
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct FerretView_Previews: PreviewProvider {
    static var previews: some View {
        FerretView(isLinkActive: .constant(true))
    }
}
