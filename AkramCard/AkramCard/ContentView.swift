//
//  ContentView.swift
//  AkramCard
//
//  Created by Akram Ali on 8/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("Akki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white,lineWidth: 5)
                    )
                
                Text("Akram Ali")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 7738081251", imageName: "phone.fill")
                
                InfoView(text: "afmprodigy@gmail.com", imageName: "envelope.fill")
                
                
                
                
                
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
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
    
}
