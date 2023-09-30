//
//  ContentView.swift
//  NanCard
//
//  Created by Nanjiong Lu on 2023-09-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // Adding background color to the screen and ignoring save areas
            Color(red: 0.95, green: 0.61, blue: 0.07, opacity: 0.90)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("nanjiong")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Nanjiong Lu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 (226)-224-6839", imageName: "phone.fill")
                InfoView(text: "nj.lu1226@gmail.com", imageName: "envelope.fill")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


