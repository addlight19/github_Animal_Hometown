//
//  SubButton.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct SubButton: View {
    var text: String
    var background: Color = (.orange)
    
    var body: some View {
        Text(text)
            .foregroundColor(.orange)
            .padding()
            .padding(.horizontal)
            .background(.white)
            .cornerRadius(30)
            .shadow(radius: 6)
        
    }
}

struct SubButton_Previews: PreviewProvider {
    static var previews: some View {
        SubButton(text: "Done")
    }
}
