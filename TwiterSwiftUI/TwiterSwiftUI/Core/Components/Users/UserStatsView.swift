//
//  UserStatsView.swift
//  TwiterSwiftUI
//
//  Created by eunji on 2022/05/28.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807").bold()
                    .font(.subheadline)
                Text("Following")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            
            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.subheadline).bold()
                
                Text("Followers")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
