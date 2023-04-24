//
//  GeneralBadEndView.swift
//  AnimalHomeTown
//
//  Created by 유빈 on 2023/04/19.
//

import SwiftUI

struct GeneralBadEndView: View {
    
    @Binding var isLinkActive: Bool
    
    var body: some View {
        VStack {
            Image("Candles")
            Text("Try Again!")
                .font(.largeTitle)
                .padding(4)
            Text("Sorry, You failed to reach their Hometown")
                
            
        }
    }
}

struct GeneralBadEndView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralBadEndView(isLinkActive: .constant(true))
    }
}
