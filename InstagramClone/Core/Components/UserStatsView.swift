//
//  UserStatsView.swift
//  InstagramClone
//
//  Created by Diego Carvalho on 4/19/24.
//

import SwiftUI

struct UserStatsView: View {
    let value: Int
    let title: String
    var body: some View {
       
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text("\(title)")
                .font(.footnote)
                .fontWeight(.semibold)
        }
        .frame(width: 72)
    }
}

#Preview {
    UserStatsView(value: 3, title: "Posts")
}
