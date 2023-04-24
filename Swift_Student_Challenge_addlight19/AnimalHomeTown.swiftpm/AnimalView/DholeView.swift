//
//  DholeView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct DholeView: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        
        VStack {
            Image("Dhole")
                .frame(width: 200, height: 200)
                .padding()
            Text("My name is Dhole. Sometimes our family get misunderstood because we look like foxes or wolves. We usually stay in Forest, Shrubland, Grassland")
                .multilineTextAlignment(.center)
                .frame(width: 400)
                .padding()
            
            NavigationLink(
                destination: TurtleView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "I think you're from Asia")
                        .frame(width: 200)
                })
            .padding()
            NavigationLink(
                destination: GeneralBadEndView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "I think you're from Europe")
                        .frame(width: 200)
                })
            .navigationBarBackButtonHidden(true)
        }
        
    }
}

struct DholeView_Previews: PreviewProvider {
    static var previews: some View {
        DholeView(isLinkActive: .constant(true))
    }
}
