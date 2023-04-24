//
//  TamarinView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct TamarinView: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Image("Tamarin")
                .frame(width: 200, height: 200)
                .padding()
            Text("My name is golden lion tamarin, also known as the golden marmoset. I really missed my Mom. Take me to hilltop forests and swamp forests...")
                .multilineTextAlignment(.center)
                .frame(width: 400)
                .padding()
            
            NavigationLink(
                destination: GeneralBadEndView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "Why don't we go to the Mexico?")
                        .frame(width: 200)
                })
            .padding()
            NavigationLink(
                destination: KeaView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "Why don't we go to the Brazil?")
                        .frame(width: 200)
                })
            .navigationBarBackButtonHidden(true)
        }
    }
}




struct TamarinView_Previews: PreviewProvider {
    static var previews: some View {
        TamarinView(isLinkActive: .constant(true))
    }
}
