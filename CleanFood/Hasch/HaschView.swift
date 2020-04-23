//
//  HaschView.swift
//  CleanFood
//
//  Created by Ewald Kerner on 16.03.20.
//  Copyright © 2020 Ewald Kerner. All rights reserved.
//

import SwiftUI

struct HaschView: View {
        var body: some View {
            
            NavigationLink(destination: HaschDetail())    {
            Image("hasch").renderingMode(.original)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 2)
            )
                .shadow(color: .black, radius: 16, x: 10, y: 10)
                
                .overlay(Text("Hasch")
                    .font(.callout)
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .opacity(0.8)
                    .cornerRadius(10.0)
                    .padding(), alignment: .bottomLeading)
            
                .overlay(Text("0431 391083")
                    .font(.callout)
                    .padding(6)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .opacity(0.8)
                    .cornerRadius(10.0)
                    .padding(), alignment: .bottomTrailing)
            }
            
        }
    }

struct HaschView_Previews: PreviewProvider {
    static var previews: some View {
        HaschView()
    }
}
