//
//  TurtleView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct TurtleView: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        VStack {
            Image("Turtle")
                .frame(width: 200, height: 200)
                .padding()
            Text("My name is African Spurred Tortoise. a.k.a. sulcata tortoise. I am the largest mainland species of tortoise in the world, and the third-largest in the world. I like warm weather under the sun.")
                .multilineTextAlignment(.center)
                .frame(width: 400)
                .padding()
            
            NavigationLink(
                destination: FerretView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "Let's go to the Africa")
                        .frame(width: 200)
                })
            .padding()
            NavigationLink(
                destination: GeneralBadEndView(isLinkActive: $isLinkActive),
                label: {
                    SubButton(text: "Let's go to the Indonesia")
                        .frame(width: 200)
                })
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct TurtleView_Previews: PreviewProvider {
    static var previews: some View {
        TurtleView(isLinkActive: .constant(true))
    }
}
