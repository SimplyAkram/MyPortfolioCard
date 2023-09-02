//
//  SwiftUIView.swift
//  AkramCard
//
//  Created by Akram Ali on 8/13/23.
//

import SwiftUI


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}
