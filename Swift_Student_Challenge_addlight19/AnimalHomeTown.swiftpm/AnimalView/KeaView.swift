//
//  KeaView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct KeaView: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        
        VStack {
            Image("Kea")
                .frame(width: 200, height: 200)
                .padding()
            Text("HeHe, Hello. My name is Kea. I have mostly olive-green with a brilliant orange under its wings. Heh My family lives in a very high mountain. HeHe ")
                .multilineTextAlignment(.center)
                .frame(width: 400)
                .padding()
            
            NavigationLink(
                destination: GeneralBadEndView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "HeHeHeI think Africa HeHe")
                        .frame(width: 200)
                })
            .padding()
            NavigationLink(
                destination: DholeView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "HeHeHeI think New Zealand HeHe")
                        .frame(width: 200)
                })
            .navigationBarBackButtonHidden(true)
        }
            
    }
}

struct KeaView_Previews: PreviewProvider {
    static var previews: some View {
        KeaView(isLinkActive: .constant(true))
    }
}
