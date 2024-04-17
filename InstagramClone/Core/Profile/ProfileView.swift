//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Diego Carvalho on 4/15/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //Header
            VStack{
                //Pics and stats
                
                
                //Name and bio
                VStack(alignment: .leading, spacing: 4){
                    Text("John Nada")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("They Live")
                        .font(.footnote)
                    
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.horizontal)
                
                
                //Action Button
                Button{
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 2))
                }
                Divider()
            }
            
            //Post grid View
            
            
            
            
        }
    }
}

#Preview {
    ProfileView()
}
