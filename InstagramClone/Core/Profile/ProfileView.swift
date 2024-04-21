//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Diego Carvalho on 4/15/24.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        
        NavigationStack {
            ScrollView{
                //Header
                VStack(spacing: 10){
                    //Pics and stats
                    HStack{
                        Image("john")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            UserStatsView(value: 3, title: "Posts")
                            UserStatsView(value: 20, title: "Followers")
                            UserStatsView(value: 40, title: "Following")
                        }

                    }
                    .padding(.horizontal)
                    
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
                
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0...15, id: \.self) { index in
                        Image("john")
                            .resizable()
                            .scaledToFill()
                    }
                    
                    
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
