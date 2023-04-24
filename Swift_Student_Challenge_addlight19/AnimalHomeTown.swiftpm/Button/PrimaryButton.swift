//
//  PrimaryButton.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = (.orange)
    
    var body: some View {
        
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.orange)
            .cornerRadius(30)
            .shadow(radius: 6)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Start")
    }
}
